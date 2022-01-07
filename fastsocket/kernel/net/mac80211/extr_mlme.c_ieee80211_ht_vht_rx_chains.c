
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int tx_mcs_map; } ;
struct ieee80211_vht_cap {TYPE_2__ supp_mcs; } ;
struct ieee80211_if_managed {int flags; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_ht_cap {int mcs; } ;
struct cfg80211_bss {int dummy; } ;


 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int WLAN_EID_HT_CAPABILITY ;
 int WLAN_EID_VHT_CAPABILITY ;
 int* ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int ieee80211_mcs_to_chains (int *) ;
 int le16_to_cpu (int ) ;
 int max (int,int) ;

__attribute__((used)) static u8 ieee80211_ht_vht_rx_chains(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_bss *cbss)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 const u8 *ht_cap_ie, *vht_cap_ie;
 const struct ieee80211_ht_cap *ht_cap;
 const struct ieee80211_vht_cap *vht_cap;
 u8 chains = 1;

 if (ifmgd->flags & IEEE80211_STA_DISABLE_HT)
  return chains;

 ht_cap_ie = ieee80211_bss_get_ie(cbss, WLAN_EID_HT_CAPABILITY);
 if (ht_cap_ie && ht_cap_ie[1] >= sizeof(*ht_cap)) {
  ht_cap = (void *)(ht_cap_ie + 2);
  chains = ieee80211_mcs_to_chains(&ht_cap->mcs);




 }

 if (ifmgd->flags & IEEE80211_STA_DISABLE_VHT)
  return chains;

 vht_cap_ie = ieee80211_bss_get_ie(cbss, WLAN_EID_VHT_CAPABILITY);
 if (vht_cap_ie && vht_cap_ie[1] >= sizeof(*vht_cap)) {
  u8 nss;
  u16 tx_mcs_map;

  vht_cap = (void *)(vht_cap_ie + 2);
  tx_mcs_map = le16_to_cpu(vht_cap->supp_mcs.tx_mcs_map);
  for (nss = 8; nss > 0; nss--) {
   if (((tx_mcs_map >> (2 * (nss - 1))) & 3) !=
     IEEE80211_VHT_MCS_NOT_SUPPORTED)
    break;
  }

  chains = max(chains, nss);
 }

 return chains;
}
