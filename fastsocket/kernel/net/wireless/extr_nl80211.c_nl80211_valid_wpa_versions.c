
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NL80211_WPA_VERSION_1 ;
 int NL80211_WPA_VERSION_2 ;

__attribute__((used)) static bool nl80211_valid_wpa_versions(u32 wpa_versions)
{
 return !(wpa_versions & ~(NL80211_WPA_VERSION_1 |
      NL80211_WPA_VERSION_2));
}
