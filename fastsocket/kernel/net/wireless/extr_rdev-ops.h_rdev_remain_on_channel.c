
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remain_on_channel ) (int *,struct wireless_dev*,struct ieee80211_channel*,unsigned int,int *) ;} ;


 int stub1 (int *,struct wireless_dev*,struct ieee80211_channel*,unsigned int,int *) ;
 int trace_rdev_remain_on_channel (int *,struct wireless_dev*,struct ieee80211_channel*,unsigned int) ;
 int trace_rdev_return_int_cookie (int *,int,int ) ;

__attribute__((used)) static inline int
rdev_remain_on_channel(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev,
         struct ieee80211_channel *chan,
         unsigned int duration, u64 *cookie)
{
 int ret;
 trace_rdev_remain_on_channel(&rdev->wiphy, wdev, chan, duration);
 ret = rdev->ops->remain_on_channel(&rdev->wiphy, wdev, chan,
        duration, cookie);
 trace_rdev_return_int_cookie(&rdev->wiphy, ret, *cookie);
 return ret;
}
