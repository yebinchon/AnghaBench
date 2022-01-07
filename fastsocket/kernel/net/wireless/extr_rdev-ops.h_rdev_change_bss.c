
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct bss_parameters {int dummy; } ;
struct TYPE_2__ {int (* change_bss ) (int *,struct net_device*,struct bss_parameters*) ;} ;


 int stub1 (int *,struct net_device*,struct bss_parameters*) ;
 int trace_rdev_change_bss (int *,struct net_device*,struct bss_parameters*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_change_bss(struct cfg80211_registered_device *rdev,
      struct net_device *dev,
      struct bss_parameters *params)

{
 int ret;
 trace_rdev_change_bss(&rdev->wiphy, dev, params);
 ret = rdev->ops->change_bss(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
