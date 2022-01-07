
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_8__ {int sa_data; int sa_family; } ;
struct TYPE_7__ {size_t length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
typedef int u8 ;
struct TYPE_9__ {int prev_bssid_valid; int prev_bssid; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; int wiphy; int netdev; TYPE_3__ wext; TYPE_4__* current_bss; } ;
struct cfg80211_bss {int bssid; } ;
struct TYPE_10__ {struct cfg80211_bss pub; } ;


 int ARPHRD_ETHER ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IWEVASSOCREQIE ;
 int IWEVASSOCRESPIE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 TYPE_4__* bss_from_pub (struct cfg80211_bss*) ;
 int cfg80211_hold_bss (TYPE_4__*) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cfg80211_unhold_bss (TYPE_4__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_roamed (int ,int ,int ,int const*,size_t,int const*,size_t,int ) ;
 int wiphy_to_dev (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int const*) ;

void __cfg80211_roamed(struct wireless_dev *wdev,
         struct cfg80211_bss *bss,
         const u8 *req_ie, size_t req_ie_len,
         const u8 *resp_ie, size_t resp_ie_len)
{



 ASSERT_WDEV_LOCK(wdev);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION &&
      wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
  goto out;

 if (wdev->sme_state != CFG80211_SME_CONNECTED)
  goto out;


 if (WARN_ON(!wdev->current_bss)) {
  goto out;
 }

 cfg80211_unhold_bss(wdev->current_bss);
 cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 wdev->current_bss = ((void*)0);

 cfg80211_hold_bss(bss_from_pub(bss));
 wdev->current_bss = bss_from_pub(bss);

 nl80211_send_roamed(wiphy_to_dev(wdev->wiphy), wdev->netdev, bss->bssid,
       req_ie, req_ie_len, resp_ie, resp_ie_len,
       GFP_KERNEL);
 return;
out:
 cfg80211_put_bss(wdev->wiphy, bss);
}
