
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct station_parameters {int sta_flags_mask; int sta_flags_set; int sta_modify_mask; scalar_t__ listen_interval; int* supported_rates; int supported_rates_len; int plink_state; int plink_action; scalar_t__ local_pm; int vht_capa; int ht_capa; scalar_t__ aid; int max_sp; int uapsd_queues; } ;
struct TYPE_11__ {int wme; int* supp_rates; scalar_t__ aid; int max_sp; int uapsd_queues; } ;
struct sta_info {scalar_t__ listen_interval; int const plink_state; TYPE_4__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_3__* bitrates; } ;
struct TYPE_12__ {scalar_t__ power_mode; } ;
struct TYPE_13__ {TYPE_5__ mshcfg; } ;
struct TYPE_14__ {TYPE_6__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; int vif; } ;
struct TYPE_9__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_10__ {int bitrate; } ;
struct TYPE_8__ {struct ieee80211_supported_band** bands; } ;


 int BIT (int) ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_MFP ;
 int NL80211_STA_FLAG_SHORT_PREAMBLE ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int NL80211_STA_FLAG_WME ;
 int STATION_PARAM_APPLY_PLINK_STATE ;
 int STATION_PARAM_APPLY_UAPSD ;
 int WLAN_STA_MFP ;
 int WLAN_STA_SHORT_PREAMBLE ;
 int WLAN_STA_TDLS_PEER ;
 int WLAN_STA_WME ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_get_sdata_band (struct ieee80211_sub_if_data*) ;
 int ieee80211_ht_cap_ie_to_sta_ht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 int ieee80211_mps_local_status_update (struct ieee80211_sub_if_data*) ;
 int ieee80211_mps_set_sta_local_pm (struct sta_info*,scalar_t__) ;
 int ieee80211_mps_sta_status_update (struct sta_info*) ;
 int ieee80211_vht_cap_ie_to_sta_vht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 scalar_t__ ieee80211_vif_is_mesh (int *) ;
 int mesh_plink_block (struct sta_info*) ;
 int mesh_plink_dec_estab_count (struct ieee80211_sub_if_data*) ;
 int mesh_plink_inc_estab_count (struct ieee80211_sub_if_data*) ;
 int mesh_plink_open (struct sta_info*) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int sta_apply_auth_flags (struct ieee80211_local*,struct sta_info*,int,int) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int sta_apply_parameters(struct ieee80211_local *local,
    struct sta_info *sta,
    struct station_parameters *params)
{
 int ret = 0;
 u32 rates;
 int i, j;
 struct ieee80211_supported_band *sband;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 enum ieee80211_band band = ieee80211_get_sdata_band(sdata);
 u32 mask, set;

 sband = local->hw.wiphy->bands[band];

 mask = params->sta_flags_mask;
 set = params->sta_flags_set;

 if (ieee80211_vif_is_mesh(&sdata->vif)) {




  if (mask & BIT(NL80211_STA_FLAG_AUTHENTICATED))
   mask |= BIT(NL80211_STA_FLAG_ASSOCIATED);
  if (set & BIT(NL80211_STA_FLAG_AUTHENTICATED))
   set |= BIT(NL80211_STA_FLAG_ASSOCIATED);
 } else if (test_sta_flag(sta, WLAN_STA_TDLS_PEER)) {





  if (set & BIT(NL80211_STA_FLAG_AUTHORIZED)) {
   set |= BIT(NL80211_STA_FLAG_AUTHENTICATED) |
          BIT(NL80211_STA_FLAG_ASSOCIATED);
   mask |= BIT(NL80211_STA_FLAG_AUTHENTICATED) |
    BIT(NL80211_STA_FLAG_ASSOCIATED);
  }
 }

 ret = sta_apply_auth_flags(local, sta, mask, set);
 if (ret)
  return ret;

 if (mask & BIT(NL80211_STA_FLAG_SHORT_PREAMBLE)) {
  if (set & BIT(NL80211_STA_FLAG_SHORT_PREAMBLE))
   set_sta_flag(sta, WLAN_STA_SHORT_PREAMBLE);
  else
   clear_sta_flag(sta, WLAN_STA_SHORT_PREAMBLE);
 }

 if (mask & BIT(NL80211_STA_FLAG_WME)) {
  if (set & BIT(NL80211_STA_FLAG_WME)) {
   set_sta_flag(sta, WLAN_STA_WME);
   sta->sta.wme = 1;
  } else {
   clear_sta_flag(sta, WLAN_STA_WME);
   sta->sta.wme = 0;
  }
 }

 if (mask & BIT(NL80211_STA_FLAG_MFP)) {
  if (set & BIT(NL80211_STA_FLAG_MFP))
   set_sta_flag(sta, WLAN_STA_MFP);
  else
   clear_sta_flag(sta, WLAN_STA_MFP);
 }

 if (mask & BIT(NL80211_STA_FLAG_TDLS_PEER)) {
  if (set & BIT(NL80211_STA_FLAG_TDLS_PEER))
   set_sta_flag(sta, WLAN_STA_TDLS_PEER);
  else
   clear_sta_flag(sta, WLAN_STA_TDLS_PEER);
 }

 if (params->sta_modify_mask & STATION_PARAM_APPLY_UAPSD) {
  sta->sta.uapsd_queues = params->uapsd_queues;
  sta->sta.max_sp = params->max_sp;
 }





 if (params->aid)
  sta->sta.aid = params->aid;
 if (params->listen_interval >= 0)
  sta->listen_interval = params->listen_interval;

 if (params->supported_rates) {
  rates = 0;

  for (i = 0; i < params->supported_rates_len; i++) {
   int rate = (params->supported_rates[i] & 0x7f) * 5;
   for (j = 0; j < sband->n_bitrates; j++) {
    if (sband->bitrates[j].bitrate == rate)
     rates |= BIT(j);
   }
  }
  sta->sta.supp_rates[band] = rates;
 }

 if (params->ht_capa)
  ieee80211_ht_cap_ie_to_sta_ht_cap(sdata, sband,
        params->ht_capa, sta);

 if (params->vht_capa)
  ieee80211_vht_cap_ie_to_sta_vht_cap(sdata, sband,
          params->vht_capa, sta);

 if (ieee80211_vif_is_mesh(&sdata->vif)) {
 }

 return 0;
}
