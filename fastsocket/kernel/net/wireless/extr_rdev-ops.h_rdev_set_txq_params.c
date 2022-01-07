
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee80211_txq_params {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_txq_params ) (int *,struct net_device*,struct ieee80211_txq_params*) ;} ;


 int stub1 (int *,struct net_device*,struct ieee80211_txq_params*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_txq_params (int *,struct net_device*,struct ieee80211_txq_params*) ;

__attribute__((used)) static inline int rdev_set_txq_params(struct cfg80211_registered_device *rdev,
          struct net_device *dev,
          struct ieee80211_txq_params *params)

{
 int ret;
 trace_rdev_set_txq_params(&rdev->wiphy, dev, params);
 ret = rdev->ops->set_txq_params(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
