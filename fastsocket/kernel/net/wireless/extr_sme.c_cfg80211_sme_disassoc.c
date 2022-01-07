
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {TYPE_1__* conn; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_4__ {int bssid; } ;
struct cfg80211_internal_bss {TYPE_2__ pub; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_CONN_IDLE ;
 int ETH_ALEN ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_mlme_deauth (struct cfg80211_registered_device*,struct net_device*,int *,int *,int ,int ,int) ;
 int memcpy (int *,int ,int) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_sme_disassoc(struct net_device *dev,
      struct cfg80211_internal_bss *bss)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 u8 bssid[ETH_ALEN];

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->conn)
  return;

 if (wdev->conn->state == CFG80211_CONN_IDLE)
  return;






 memcpy(bssid, bss->pub.bssid, ETH_ALEN);

 __cfg80211_mlme_deauth(rdev, dev, bssid, ((void*)0), 0,
          WLAN_REASON_DEAUTH_LEAVING, 0);
}
