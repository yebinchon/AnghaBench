
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int devlist_mtx; } ;
struct cfg80211_ibss_params {int dummy; } ;
struct cfg80211_cached_keys {int dummy; } ;


 int __cfg80211_join_ibss (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_ibss_params*,struct cfg80211_cached_keys*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_join_ibss(struct cfg80211_registered_device *rdev,
         struct net_device *dev,
         struct cfg80211_ibss_params *params,
         struct cfg80211_cached_keys *connkeys)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 mutex_lock(&rdev->devlist_mtx);
 wdev_lock(wdev);
 err = __cfg80211_join_ibss(rdev, dev, params, connkeys);
 wdev_unlock(wdev);
 mutex_unlock(&rdev->devlist_mtx);

 return err;
}
