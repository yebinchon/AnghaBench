
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct net {int dummy; } ;
struct cfg80211_registered_device {int mtx; } ;
struct TYPE_2__ {int wiphy; } ;


 int ENODEV ;
 struct cfg80211_registered_device* ERR_PTR (int ) ;
 int cfg80211_mutex ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

struct cfg80211_registered_device *
cfg80211_get_dev_from_ifindex(struct net *net, int ifindex)
{
 struct cfg80211_registered_device *rdev = ERR_PTR(-ENODEV);
 struct net_device *dev;

 mutex_lock(&cfg80211_mutex);
 dev = dev_get_by_index(net, ifindex);
 if (!dev)
  goto out;
 if (dev->ieee80211_ptr) {
  rdev = wiphy_to_dev(dev->ieee80211_ptr->wiphy);
  mutex_lock(&rdev->mtx);
 } else
  rdev = ERR_PTR(-ENODEV);
 dev_put(dev);
 out:
 mutex_unlock(&cfg80211_mutex);
 return rdev;
}
