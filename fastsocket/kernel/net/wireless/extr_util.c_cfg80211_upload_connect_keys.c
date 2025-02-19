
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {TYPE_2__* connect_keys; struct net_device* netdev; int wiphy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_4__ {int def; int defmgmt; TYPE_1__* params; } ;
struct TYPE_3__ {int cipher; } ;


 int kfree (TYPE_2__*) ;
 int netdev_err (struct net_device*,char*,int) ;
 scalar_t__ rdev_add_key (struct cfg80211_registered_device*,struct net_device*,int,int,int *,TYPE_1__*) ;
 scalar_t__ rdev_set_default_key (struct cfg80211_registered_device*,struct net_device*,int,int,int) ;
 scalar_t__ rdev_set_default_mgmt_key (struct cfg80211_registered_device*,struct net_device*,int) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_upload_connect_keys(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct net_device *dev = wdev->netdev;
 int i;

 if (!wdev->connect_keys)
  return;

 for (i = 0; i < 6; i++) {
  if (!wdev->connect_keys->params[i].cipher)
   continue;
  if (rdev_add_key(rdev, dev, i, 0, ((void*)0),
     &wdev->connect_keys->params[i])) {
   netdev_err(dev, "failed to set key %d\n", i);
   continue;
  }
  if (wdev->connect_keys->def == i)
   if (rdev_set_default_key(rdev, dev, i, 1, 1)) {
    netdev_err(dev, "failed to set defkey %d\n", i);
    continue;
   }
  if (wdev->connect_keys->defmgmt == i)
   if (rdev_set_default_mgmt_key(rdev, dev, i))
    netdev_err(dev, "failed to set mgtdef %d\n", i);
 }

 kfree(wdev->connect_keys);
 wdev->connect_keys = ((void*)0);
}
