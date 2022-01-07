
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rfkill_poll ) (int *) ;} ;


 int stub1 (int *) ;
 int trace_rdev_return_void (int *) ;
 int trace_rdev_rfkill_poll (int *) ;

__attribute__((used)) static inline void rdev_rfkill_poll(struct cfg80211_registered_device *rdev)
{
 trace_rdev_rfkill_poll(&rdev->wiphy);
 rdev->ops->rfkill_poll(&rdev->wiphy);
 trace_rdev_return_void(&rdev->wiphy);
}
