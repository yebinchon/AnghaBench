
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_ringparam ) (int *,int ,int ) ;} ;


 int stub1 (int *,int ,int ) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_ringparam (int *,int ,int ) ;

__attribute__((used)) static inline int rdev_set_ringparam(struct cfg80211_registered_device *rdev,
         u32 tx, u32 rx)
{
 int ret;
 trace_rdev_set_ringparam(&rdev->wiphy, tx, rx);
 ret = rdev->ops->set_ringparam(&rdev->wiphy, tx, rx);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
