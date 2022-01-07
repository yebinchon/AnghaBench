
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ registered; } ;
struct cfg80211_registered_device {int * wowlan; TYPE_2__* ops; TYPE_1__ wiphy; int suspend_at; } ;
typedef int pm_message_t ;
struct TYPE_4__ {scalar_t__ suspend; } ;


 int cfg80211_leave_all (struct cfg80211_registered_device*) ;
 struct cfg80211_registered_device* dev_to_rdev (struct device*) ;
 int get_seconds () ;
 int rdev_suspend (struct cfg80211_registered_device*,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int wiphy_suspend(struct device *dev, pm_message_t state)
{
 struct cfg80211_registered_device *rdev = dev_to_rdev(dev);
 int ret = 0;

 rdev->suspend_at = get_seconds();

 rtnl_lock();
 if (rdev->wiphy.registered) {
  if (!rdev->wowlan)
   cfg80211_leave_all(rdev);
  if (rdev->ops->suspend)
   ret = rdev_suspend(rdev, rdev->wowlan);
  if (ret == 1) {

   cfg80211_leave_all(rdev);
   ret = rdev_suspend(rdev, ((void*)0));
  }
 }
 rtnl_unlock();

 return ret;
}
