
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;
struct TYPE_2__ {int (* tdls_oper ) (int *,struct net_device*,int *,int) ;} ;


 int stub1 (int *,struct net_device*,int *,int) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_tdls_oper (int *,struct net_device*,int *,int) ;

__attribute__((used)) static inline int rdev_tdls_oper(struct cfg80211_registered_device *rdev,
     struct net_device *dev, u8 *peer,
     enum nl80211_tdls_operation oper)
{
 int ret;
 trace_rdev_tdls_oper(&rdev->wiphy, dev, peer, oper);
 ret = rdev->ops->tdls_oper(&rdev->wiphy, dev, peer, oper);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
