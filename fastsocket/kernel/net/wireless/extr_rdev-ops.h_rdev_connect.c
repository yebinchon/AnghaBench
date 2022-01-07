
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_connect_params {int dummy; } ;
struct TYPE_2__ {int (* connect ) (int *,struct net_device*,struct cfg80211_connect_params*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_connect_params*) ;
 int trace_rdev_connect (int *,struct net_device*,struct cfg80211_connect_params*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_connect(struct cfg80211_registered_device *rdev,
          struct net_device *dev,
          struct cfg80211_connect_params *sme)
{
 int ret;
 trace_rdev_connect(&rdev->wiphy, dev, sme);
 ret = rdev->ops->connect(&rdev->wiphy, dev, sme);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
