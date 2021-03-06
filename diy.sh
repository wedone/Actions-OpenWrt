#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.8.2/g' package/base-files/files/bin/config_generate
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/lean/luci-app-koolproxyR
git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
git clone https://github.com/frainzy1477/luci-app-clash package/lean/luci-app-clash
git clone https://github.com/vernesong/OpenClash package/lean/luci-app-OpenClash
./scripts/feeds update -a
./scripts/feeds install -a
