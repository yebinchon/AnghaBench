
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_wowlan {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* suspend ) (int *,struct cfg80211_wowlan*) ;} ;


 int stub1 (int *,struct cfg80211_wowlan*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_suspend (int *,struct cfg80211_wowlan*) ;

__attribute__((used)) static inline int rdev_suspend(struct cfg80211_registered_device *rdev,
          struct cfg80211_wowlan *wowlan)
{
 int ret;
 trace_rdev_suspend(&rdev->wiphy, wowlan);
 ret = rdev->ops->suspend(&rdev->wiphy, wowlan);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
