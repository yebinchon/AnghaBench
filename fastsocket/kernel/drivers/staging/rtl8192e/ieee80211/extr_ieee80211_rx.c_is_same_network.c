
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_network {scalar_t__ ssid_len; scalar_t__ channel; int capability; int ssid; int bssid; } ;
struct ieee80211_device {scalar_t__ iw_mode; } ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ IW_MODE_INFRA ;
 int WLAN_CAPABILITY_BSS ;
 int WLAN_CAPABILITY_IBSS ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int is_same_network(struct ieee80211_network *src,
      struct ieee80211_network *dst, struct ieee80211_device* ieee)
{




 return
  (((src->ssid_len == dst->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
  (src->channel == dst->channel) &&
  !memcmp(src->bssid, dst->bssid, ETH_ALEN) &&

  (!memcmp(src->ssid, dst->ssid, src->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
  ((src->capability & WLAN_CAPABILITY_IBSS) ==
  (dst->capability & WLAN_CAPABILITY_IBSS)) &&
  ((src->capability & WLAN_CAPABILITY_BSS) ==
  (dst->capability & WLAN_CAPABILITY_BSS)));
}
