
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cfg80211_bss_ies {int len; int data; } ;
struct cfg80211_bss {int ies; int bssid; } ;


 int WLAN_EID_SSID ;
 size_t* cfg80211_find_ie (int ,int ,int ) ;
 int ether_addr_equal (int ,size_t const*) ;
 scalar_t__ memcmp (size_t const*,size_t const*,size_t) ;
 struct cfg80211_bss_ies* rcu_access_pointer (int ) ;

__attribute__((used)) static bool is_bss(struct cfg80211_bss *a, const u8 *bssid,
     const u8 *ssid, size_t ssid_len)
{
 const struct cfg80211_bss_ies *ies;
 const u8 *ssidie;

 if (bssid && !ether_addr_equal(a->bssid, bssid))
  return 0;

 if (!ssid)
  return 1;

 ies = rcu_access_pointer(a->ies);
 if (!ies)
  return 0;
 ssidie = cfg80211_find_ie(WLAN_EID_SSID, ies->data, ies->len);
 if (!ssidie)
  return 0;
 if (ssidie[1] != ssid_len)
  return 0;
 return memcmp(ssidie + 2, ssid, ssid_len) == 0;
}
