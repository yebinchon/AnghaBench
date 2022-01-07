
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_et_sset_count ) (int *,struct net_device*,int) ;} ;


 int stub1 (int *,struct net_device*,int) ;
 int trace_rdev_get_et_sset_count (int *,struct net_device*,int) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_get_et_sset_count(struct cfg80211_registered_device *rdev,
         struct net_device *dev, int sset)
{
 int ret;
 trace_rdev_get_et_sset_count(&rdev->wiphy, dev, sset);
 ret = rdev->ops->get_et_sset_count(&rdev->wiphy, dev, sset);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
