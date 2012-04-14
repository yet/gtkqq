#!/bin/sh
# 
# The script moves these files to gtkqq.github.com
# 

# update gh-pages
git add . 
git commit -a -m 'updated on `date`'
git push

# update gtkqq.github.com
cd /tmp/
git clone git@github.com:gtkqq/gtkqq.github.com.git 
cd - 
cp * /tmp/gtkqq.github.com -r
cd /tmp/gtkqq.github.com
git add .
git commit -a -m 'updated on `date`'
git push
