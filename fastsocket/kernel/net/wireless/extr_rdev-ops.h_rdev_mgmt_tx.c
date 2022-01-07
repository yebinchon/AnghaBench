
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mgmt_tx ) (int *,struct wireless_dev*,struct ieee80211_channel*,int,unsigned int,int const*,size_t,int,int,int *) ;} ;


 int stub1 (int *,struct wireless_dev*,struct ieee80211_channel*,int,unsigned int,int const*,size_t,int,int,int *) ;
 int trace_rdev_mgmt_tx (int *,struct wireless_dev*,struct ieee80211_channel*,int,unsigned int,int,int) ;
 int trace_rdev_return_int_cookie (int *,int,int ) ;

__attribute__((used)) static inline int rdev_mgmt_tx(struct cfg80211_registered_device *rdev,
          struct wireless_dev *wdev,
          struct ieee80211_channel *chan, bool offchan,
          unsigned int wait, const u8 *buf, size_t len,
          bool no_cck, bool dont_wait_for_ack, u64 *cookie)
{
 int ret;
 trace_rdev_mgmt_tx(&rdev->wiphy, wdev, chan, offchan,
      wait, no_cck, dont_wait_for_ack);
 ret = rdev->ops->mgmt_tx(&rdev->wiphy, wdev, chan, offchan,
      wait, buf, len, no_cck,
      dont_wait_for_ack, cookie);
 trace_rdev_return_int_cookie(&rdev->wiphy, ret, *cookie);
 return ret;
}
