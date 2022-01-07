
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {TYPE_1__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_deauth_request {int ie_len; int local_state_change; int const* ie; int reason_code; int const* bssid; } ;
struct TYPE_4__ {int bssid; } ;
struct TYPE_3__ {TYPE_2__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ether_addr_equal (int ,int const*) ;
 int rdev_deauth (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_deauth_request*) ;

int __cfg80211_mlme_deauth(struct cfg80211_registered_device *rdev,
      struct net_device *dev, const u8 *bssid,
      const u8 *ie, int ie_len, u16 reason,
      bool local_state_change)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_deauth_request req = {
  .bssid = bssid,
  .reason_code = reason,
  .ie = ie,
  .ie_len = ie_len,
  .local_state_change = local_state_change,
 };

 ASSERT_WDEV_LOCK(wdev);

 if (local_state_change && (!wdev->current_bss ||
     !ether_addr_equal(wdev->current_bss->pub.bssid, bssid)))
  return 0;

 return rdev_deauth(rdev, dev, &req);
}
