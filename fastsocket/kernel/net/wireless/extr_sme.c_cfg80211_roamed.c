
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {scalar_t__ sme_state; int ssid_len; int ssid; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
typedef int gfp_t ;


 int CFG80211_DEV_WARN_ON (int) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_CAPABILITY_ESS ;
 struct cfg80211_bss* cfg80211_get_bss (int ,struct ieee80211_channel*,int const*,int ,int ,int ,int ) ;
 int cfg80211_roamed_bss (struct net_device*,struct cfg80211_bss*,int const*,size_t,int const*,size_t,int ) ;

void cfg80211_roamed(struct net_device *dev,
       struct ieee80211_channel *channel,
       const u8 *bssid,
       const u8 *req_ie, size_t req_ie_len,
       const u8 *resp_ie, size_t resp_ie_len, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_bss *bss;

 CFG80211_DEV_WARN_ON(wdev->sme_state != CFG80211_SME_CONNECTED);

 bss = cfg80211_get_bss(wdev->wiphy, channel, bssid, wdev->ssid,
          wdev->ssid_len, WLAN_CAPABILITY_ESS,
          WLAN_CAPABILITY_ESS);
 if (WARN_ON(!bss))
  return;

 cfg80211_roamed_bss(dev, bss, req_ie, req_ie_len, resp_ie,
       resp_ie_len, gfp);
}
