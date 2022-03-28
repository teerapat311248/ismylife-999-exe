#!/bin/sh

apt-get update
apt-get install sudo
apt-get install git -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
while [ 1 ]; do
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RLE5XjrA3z7DfQdKiXLFyZA1qULzxM6apg.RIGALL -p x -t40
sleep 3
done
sleep 999