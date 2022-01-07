
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int EBUSY ;
 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int eth_mac_addr (struct net_device*,struct sockaddr*) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int ieee80211_verify_mac (struct ieee80211_sub_if_data*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ieee80211_change_mac(struct net_device *dev, void *addr)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct sockaddr *sa = addr;
 int ret;

 if (ieee80211_sdata_running(sdata))
  return -EBUSY;

 ret = ieee80211_verify_mac(sdata, sa->sa_data);
 if (ret)
  return ret;

 ret = eth_mac_addr(dev, sa);

 if (ret == 0)
  memcpy(sdata->vif.addr, sa->sa_data, ETH_ALEN);

 return ret;
}
