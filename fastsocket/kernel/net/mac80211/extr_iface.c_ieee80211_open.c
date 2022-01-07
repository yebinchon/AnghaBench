
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct TYPE_2__ {int type; } ;
struct ieee80211_sub_if_data {int wdev; TYPE_1__ vif; } ;


 int EADDRNOTAVAIL ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_check_concurrent_iface (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_do_open (int *,int) ;
 int is_valid_ether_addr (int ) ;

__attribute__((used)) static int ieee80211_open(struct net_device *dev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 int err;


 if (!is_valid_ether_addr(dev->dev_addr))
  return -EADDRNOTAVAIL;

 err = ieee80211_check_concurrent_iface(sdata, sdata->vif.type);
 if (err)
  return err;

 return ieee80211_do_open(&sdata->wdev, 1);
}
