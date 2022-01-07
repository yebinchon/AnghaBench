
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_cqm_txe_config ) (int *,struct net_device*,int ,int ,int ) ;} ;


 int stub1 (int *,struct net_device*,int ,int ,int ) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_cqm_txe_config (int *,struct net_device*,int ,int ,int ) ;

__attribute__((used)) static inline int
rdev_set_cqm_txe_config(struct cfg80211_registered_device *rdev,
   struct net_device *dev, u32 rate, u32 pkts, u32 intvl)
{
 int ret;
 trace_rdev_set_cqm_txe_config(&rdev->wiphy, dev, rate, pkts, intvl);
 ret = rdev->ops->set_cqm_txe_config(&rdev->wiphy, dev, rate, pkts,
          intvl);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
