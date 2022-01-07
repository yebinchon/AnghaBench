
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_tx_rate {scalar_t__ idx; } ;
struct ieee80211_tx_info {size_t band; } ;
struct ieee80211_supported_band {int n_bitrates; } ;
struct TYPE_8__ {int width; } ;
struct TYPE_9__ {TYPE_3__ chandef; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct ieee80211_sub_if_data {int* rc_rateidx_mask; int* rc_has_mcs_mask; TYPE_5__ vif; int * rc_rateidx_mcs_mask; } ;
struct TYPE_6__ {int * rx_mask; } ;
struct TYPE_7__ {TYPE_1__ mcs; } ;
struct ieee80211_sta {int* supp_rates; TYPE_2__ ht_cap; } ;
typedef int mcs_mask ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;


 int IEEE80211_HT_MCS_MASK_LEN ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int,int) ;
 int rate_idx_match_mask (struct ieee80211_tx_rate*,struct ieee80211_supported_band*,int,int,int *) ;

__attribute__((used)) static void rate_control_apply_mask(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_sta *sta,
        struct ieee80211_supported_band *sband,
        struct ieee80211_tx_info *info,
        struct ieee80211_tx_rate *rates,
        int max_rates)
{
 enum nl80211_chan_width chan_width;
 u8 mcs_mask[IEEE80211_HT_MCS_MASK_LEN];
 bool has_mcs_mask;
 u32 mask;
 int i;






 mask = sdata->rc_rateidx_mask[info->band];
 has_mcs_mask = sdata->rc_has_mcs_mask[info->band];
 if (mask == (1 << sband->n_bitrates) - 1 && !has_mcs_mask)
  return;

 if (has_mcs_mask)
  memcpy(mcs_mask, sdata->rc_rateidx_mcs_mask[info->band],
         sizeof(mcs_mask));
 else
  memset(mcs_mask, 0xff, sizeof(mcs_mask));

 if (sta) {

  mask &= sta->supp_rates[info->band];
  for (i = 0; i < sizeof(mcs_mask); i++)
   mcs_mask[i] &= sta->ht_cap.mcs.rx_mask[i];
 }






 chan_width = sdata->vif.bss_conf.chandef.width;
 for (i = 0; i < max_rates; i++) {

  if (rates[i].idx < 0)
   break;

  rate_idx_match_mask(&rates[i], sband, chan_width, mask,
        mcs_mask);
 }
}
