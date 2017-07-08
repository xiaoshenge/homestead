#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
sudo apt-get install -y zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git config --global user.name "xiaoshenge" 
git config --global user.email "xiaoshengeer@gmail.com"
git config --global color.ui true
git config --global pull.rebase true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
# git默认不区分大小写，对大小写敏感的不友好
git config --global core.ignorecase false
# 设置忽略文件权限
git config --global core.filemode false
# 设置不自动转换换行符
git config --global core.autocrlf false
# 校验混用则拒绝提交
git config --global core.safecrlf true
# pull操作默认rebase，避免出现自动merge
git config --global pull.rebase true
