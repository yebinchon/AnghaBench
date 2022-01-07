
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_wakeup ) (int *,int) ;} ;


 int stub1 (int *,int) ;
 int trace_rdev_return_void (int *) ;
 int trace_rdev_set_wakeup (int *,int) ;

__attribute__((used)) static inline void rdev_set_wakeup(struct cfg80211_registered_device *rdev,
       bool enabled)
{
 trace_rdev_set_wakeup(&rdev->wiphy, enabled);
 rdev->ops->set_wakeup(&rdev->wiphy, enabled);
 trace_rdev_return_void(&rdev->wiphy);
}
