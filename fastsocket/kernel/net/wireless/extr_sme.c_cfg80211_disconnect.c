
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int wdev_lock (int ) ;
 int wdev_unlock (int ) ;

int cfg80211_disconnect(struct cfg80211_registered_device *rdev,
   struct net_device *dev,
   u16 reason, bool wextev)
{
 int err;

 wdev_lock(dev->ieee80211_ptr);
 err = __cfg80211_disconnect(rdev, dev, reason, wextev);
 wdev_unlock(dev->ieee80211_ptr);

 return err;
}
