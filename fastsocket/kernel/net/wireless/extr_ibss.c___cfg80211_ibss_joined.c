
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_5__ {int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; int wiphy; int sme_state; TYPE_2__* current_bss; int ssid_len; int ssid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_6__ {int pub; } ;


 int CFG80211_SME_CONNECTED ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_CAPABILITY_IBSS ;
 TYPE_2__* bss_from_pub (struct cfg80211_bss*) ;
 struct cfg80211_bss* cfg80211_get_bss (int ,int *,int const*,int ,int ,int ,int ) ;
 int cfg80211_hold_bss (TYPE_2__*) ;
 int cfg80211_put_bss (int ,int *) ;
 int cfg80211_unhold_bss (TYPE_2__*) ;
 int cfg80211_upload_connect_keys (struct wireless_dev*) ;
 int memcpy (int ,int const*,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_ibss_bssid (int ,struct net_device*,int const*,int ) ;
 int wiphy_to_dev (int ) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

void __cfg80211_ibss_joined(struct net_device *dev, const u8 *bssid)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_bss *bss;




 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_ADHOC))
  return;

 if (!wdev->ssid_len)
  return;

 bss = cfg80211_get_bss(wdev->wiphy, ((void*)0), bssid,
          wdev->ssid, wdev->ssid_len,
          WLAN_CAPABILITY_IBSS, WLAN_CAPABILITY_IBSS);

 if (WARN_ON(!bss))
  return;

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 }

 cfg80211_hold_bss(bss_from_pub(bss));
 wdev->current_bss = bss_from_pub(bss);

 wdev->sme_state = CFG80211_SME_CONNECTED;
 cfg80211_upload_connect_keys(wdev);

 nl80211_send_ibss_bssid(wiphy_to_dev(wdev->wiphy), dev, bssid,
    GFP_KERNEL);





}
