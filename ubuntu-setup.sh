#!/bin/sh

cleanup() {
    sudo apt-get -y update
    sudo apt-get -y dist-upgrade
    sudo apt-get -y -f install
    sudo apt-get -y autoremove
    sudo apt-get -y autoclean
    sudo apt-get -y clean
}

# fast-apt
sudo add-apt-repository -y ppa:saiarcot895/myppa
sudo apt-get -y update
sudo apt-get -y install apt-fast

# req to install
sudo apt-fast -y install aptitude cowsay curl dpkg

# mongodb package
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# auto repos
sudo add-apt-repository -y ppa:cwchien/gradle
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:paolorotolo/android-studio
sudo add-apt-repository -y ppa:linrunner/tlp
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo add-apt-repository -y ppa:atareao/atareao
sudo apt-add-repository -y ppa:damien-moore/codeblocks-stable
sudo add-apt-repository -y multiverse
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo apt-get -y install software-properties-common

sudo apt-get update

# codec
sudo apt-get install -y ubuntu-restricted-extras libavcodec-extra ffmpeg x264 gstreamer0.10-ffmpeg libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get -y install vlc browser-plugin-vlc

# gimp
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# myweather
sudo apt-get install -y my-weather-indicator

# caffeine
sudo apt-get install -y caffeine

# variety
sudo apt-get install -y variety

# shutter
sudo apt-get install -y shutter

# steam
sudo apt-get install -y steam

# synaptic
sudo apt-get install -y synaptic

# bleachbit
sudo apt-get install -y bleachbit

# gdebi
sudo apt-get install -y gdebi

# unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

# ubuntu-make
sudo apt-get install -y ubuntu-make

# clementine player
sudo apt-get install -y clementine

# java
sudo apt-get -y install oracle-java8-installer

# export java variables
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.profile

# android
sudo apt-get -y install android-studio

# codeblocks
sudo apt-get -y install codeblocks

# rdp
sudo apt-get -y install remmina remmina-plugin-rdp

# tlp
sudo apt-get -y install tlp tlp-rdw
sudo tlp start

# virtualbox
sudo apt-get -y install virtualbox

# build systems
sudo apt-get -y install maven
sudo apt-get -y install gradle

# transmisson
sudo apt-get -y install transmission minissdpd natpmp-utils

# skype
sudo apt-get -y install skype

# sublime2
sudo apt-get -y install sublime-text

# git
sudo apt-get -y install git
sudo apt-get -y install gitk
sudo apt-get -y install git-gui

# google chrome
sudo aptitude -y install google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list

# grub customizer
sudo apt-get -y install grub-customizer

# mongodb latest stable version
sudo apt-get -y install mongodb-org

# tomcat7
sudo apt-get -y install tomcat7

# grunt, gulp and bower
sudo npm install -g grunt-cli bower gulp

# jekyll
sudo gem install jekyll

cleanup

cowsay "FINISHED"
