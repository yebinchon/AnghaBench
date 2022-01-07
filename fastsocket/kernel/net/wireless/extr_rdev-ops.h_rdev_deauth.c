
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_deauth_request {int dummy; } ;
struct TYPE_2__ {int (* deauth ) (int *,struct net_device*,struct cfg80211_deauth_request*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_deauth_request*) ;
 int trace_rdev_deauth (int *,struct net_device*,struct cfg80211_deauth_request*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_deauth(struct cfg80211_registered_device *rdev,
         struct net_device *dev,
         struct cfg80211_deauth_request *req)
{
 int ret;
 trace_rdev_deauth(&rdev->wiphy, dev, req);
 ret = rdev->ops->deauth(&rdev->wiphy, dev, req);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
