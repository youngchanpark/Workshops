

sudo yum install git tmux

sudo chmod 777 /opt

sudo groupadd git

sudo usermod --gid git ycp93

# Make users aaa - zzz
# Password same as the username
for char in {a..z}
do 
    user_id=$(echo "$char$char$char")
    sudo useradd --gid git $user_id
    echo $user_id | sudo passwd --stdin $user_id
done

sudo chmod 777 -R /home