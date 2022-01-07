
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ registered; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; scalar_t__ suspend_at; } ;
struct TYPE_3__ {scalar_t__ resume; } ;


 int cfg80211_bss_age (struct cfg80211_registered_device*,scalar_t__) ;
 struct cfg80211_registered_device* dev_to_rdev (struct device*) ;
 scalar_t__ get_seconds () ;
 int rdev_resume (struct cfg80211_registered_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int wiphy_resume(struct device *dev)
{
 struct cfg80211_registered_device *rdev = dev_to_rdev(dev);
 int ret = 0;


 cfg80211_bss_age(rdev, get_seconds() - rdev->suspend_at);

 if (rdev->ops->resume) {
  rtnl_lock();
  if (rdev->wiphy.registered)
   ret = rdev_resume(rdev);
  rtnl_unlock();
 }

 return ret;
}
