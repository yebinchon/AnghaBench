
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_crit_proto_id { ____Placeholder_nl80211_crit_proto_id } nl80211_crit_proto_id ;
struct TYPE_2__ {int (* crit_proto_start ) (int *,struct wireless_dev*,int,int ) ;} ;


 int stub1 (int *,struct wireless_dev*,int,int ) ;
 int trace_rdev_crit_proto_start (int *,struct wireless_dev*,int,int ) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_crit_proto_start(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     enum nl80211_crit_proto_id protocol,
     u16 duration)
{
 int ret;

 trace_rdev_crit_proto_start(&rdev->wiphy, wdev, protocol, duration);
 ret = rdev->ops->crit_proto_start(&rdev->wiphy, wdev,
       protocol, duration);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
