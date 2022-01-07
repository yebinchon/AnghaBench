
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_request {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* scan ) (int *,struct cfg80211_scan_request*) ;} ;


 int stub1 (int *,struct cfg80211_scan_request*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_scan (int *,struct cfg80211_scan_request*) ;

__attribute__((used)) static inline int rdev_scan(struct cfg80211_registered_device *rdev,
       struct cfg80211_scan_request *request)
{
 int ret;
 trace_rdev_scan(&rdev->wiphy, request);
 ret = rdev->ops->scan(&rdev->wiphy, request);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
