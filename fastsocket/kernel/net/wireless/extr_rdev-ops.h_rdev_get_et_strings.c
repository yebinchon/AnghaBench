
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_et_strings ) (int *,struct net_device*,int ,int *) ;} ;


 int stub1 (int *,struct net_device*,int ,int *) ;
 int trace_rdev_get_et_strings (int *,struct net_device*,int ) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void rdev_get_et_strings(struct cfg80211_registered_device *rdev,
           struct net_device *dev, u32 sset,
           u8 *data)
{
 trace_rdev_get_et_strings(&rdev->wiphy, dev, sset);
 rdev->ops->get_et_strings(&rdev->wiphy, dev, sset, data);
 trace_rdev_return_void(&rdev->wiphy);
}
