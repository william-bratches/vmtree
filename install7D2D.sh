#!/usr/bin/env bash
sudo su
source config.sh


#architecture
dpkg --add-architecture i386
apt-get update
apt-get install libc6-i386 lib32gcc1 lib32stdc++6 -y

apt-get update
apt-get install screen -y

#steam
mkdir ~/steamcmd
cd ~/steamcmd
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar -xf steamcmd_linux.tar.gz
rm steamcmd_linux.tar.gz

#make executable
chmod +x steamcmd.sh
./steamcmd.sh

#login
# make sure steamGuard is OFF
login USER PASS

#steam config
force_install_dir ./7D2D
app_update 294420
quit
