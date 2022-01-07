
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct genl_info {int attrs; } ;
struct cfg80211_registered_device {int mtx; } ;


 int IS_ERR (struct cfg80211_registered_device*) ;
 struct cfg80211_registered_device* __cfg80211_rdev_from_attrs (struct net*,int ) ;
 int cfg80211_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct cfg80211_registered_device *
cfg80211_get_dev_from_info(struct net *netns, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev;

 mutex_lock(&cfg80211_mutex);
 rdev = __cfg80211_rdev_from_attrs(netns, info->attrs);




 if (!IS_ERR(rdev))
  mutex_lock(&rdev->mtx);

 mutex_unlock(&cfg80211_mutex);

 return rdev;
}
