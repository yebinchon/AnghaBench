
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ieee80211_ptr; } ;
struct cfg80211_registered_device {int devlist_mtx; int sched_scan_mtx; } ;
struct cfg80211_connect_params {int dummy; } ;
struct cfg80211_cached_keys {int dummy; } ;


 int __cfg80211_connect (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_connect_params*,struct cfg80211_cached_keys*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (int ) ;
 int wdev_unlock (int ) ;

int cfg80211_connect(struct cfg80211_registered_device *rdev,
       struct net_device *dev,
       struct cfg80211_connect_params *connect,
       struct cfg80211_cached_keys *connkeys)
{
 int err;

 mutex_lock(&rdev->devlist_mtx);

 mutex_lock(&rdev->sched_scan_mtx);
 wdev_lock(dev->ieee80211_ptr);
 err = __cfg80211_connect(rdev, dev, connect, connkeys, ((void*)0));
 wdev_unlock(dev->ieee80211_ptr);
 mutex_unlock(&rdev->sched_scan_mtx);
 mutex_unlock(&rdev->devlist_mtx);

 return err;
}
