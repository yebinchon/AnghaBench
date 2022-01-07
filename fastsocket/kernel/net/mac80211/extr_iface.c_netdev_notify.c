
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int name; TYPE_2__* ieee80211_ptr; } ;
struct ieee80211_sub_if_data {int name; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {scalar_t__ privid; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IFNAMSIZ ;
 unsigned long NETDEV_CHANGENAME ;
 int ieee80211_debugfs_rename_netdev (struct ieee80211_sub_if_data*) ;
 scalar_t__ mac80211_wiphy_privid ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int netdev_notify(struct notifier_block *nb,
    unsigned long state,
    void *ndev)
{
 struct net_device *dev = ndev;
 struct ieee80211_sub_if_data *sdata;

 if (state != NETDEV_CHANGENAME)
  return 0;

 if (!dev->ieee80211_ptr || !dev->ieee80211_ptr->wiphy)
  return 0;

 if (dev->ieee80211_ptr->wiphy->privid != mac80211_wiphy_privid)
  return 0;

 sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 memcpy(sdata->name, dev->name, IFNAMSIZ);

 ieee80211_debugfs_rename_netdev(sdata);
 return 0;
}
