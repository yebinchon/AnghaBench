
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


typedef scalar_t__ u8 ;
struct TYPE_8__ {int rx_mask; } ;
struct TYPE_12__ {int ampdu_params_info; TYPE_1__ mcs; } ;
struct TYPE_9__ {int rx_mask; } ;
struct TYPE_11__ {int ampdu_params_info; TYPE_2__ mcs; } ;
struct TYPE_13__ {TYPE_5__ ht_capa; TYPE_4__ ht_capa_mask; } ;
struct TYPE_14__ {TYPE_6__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; } ;
struct TYPE_10__ {scalar_t__* rx_mask; } ;
struct ieee80211_sta_ht_cap {scalar_t__ ampdu_factor; scalar_t__ ampdu_density; TYPE_3__ mcs; int ht_supported; } ;


 int IEEE80211_HT_AMPDU_PARM_DENSITY ;
 int IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT ;
 int IEEE80211_HT_AMPDU_PARM_FACTOR ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MCS_MASK_LEN ;
 int __check_htcap_disable (struct ieee80211_sub_if_data*,struct ieee80211_sta_ht_cap*,int ) ;

void ieee80211_apply_htcap_overrides(struct ieee80211_sub_if_data *sdata,
         struct ieee80211_sta_ht_cap *ht_cap)
{
 u8 *scaps = (u8 *)(&sdata->u.mgd.ht_capa.mcs.rx_mask);
 u8 *smask = (u8 *)(&sdata->u.mgd.ht_capa_mask.mcs.rx_mask);
 int i;

 if (!ht_cap->ht_supported)
  return;
 for (i = 0; i < IEEE80211_HT_MCS_MASK_LEN; i++) {
  u8 m = smask[i];
  ht_cap->mcs.rx_mask[i] &= ~m;

  ht_cap->mcs.rx_mask[i] |= (m & scaps[i]);
 }


 __check_htcap_disable(sdata, ht_cap, IEEE80211_HT_CAP_SUP_WIDTH_20_40);
 __check_htcap_disable(sdata, ht_cap, IEEE80211_HT_CAP_SGI_40);


 __check_htcap_disable(sdata, ht_cap, IEEE80211_HT_CAP_SGI_20);


 __check_htcap_disable(sdata, ht_cap, IEEE80211_HT_CAP_MAX_AMSDU);


 if (sdata->u.mgd.ht_capa_mask.ampdu_params_info &
     IEEE80211_HT_AMPDU_PARM_FACTOR) {
  u8 n = sdata->u.mgd.ht_capa.ampdu_params_info
   & IEEE80211_HT_AMPDU_PARM_FACTOR;
  if (n < ht_cap->ampdu_factor)
   ht_cap->ampdu_factor = n;
 }


 if (sdata->u.mgd.ht_capa_mask.ampdu_params_info &
     IEEE80211_HT_AMPDU_PARM_DENSITY) {
  u8 n = (sdata->u.mgd.ht_capa.ampdu_params_info &
   IEEE80211_HT_AMPDU_PARM_DENSITY)
   >> IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT;
  if (n > ht_cap->ampdu_density)
   ht_cap->ampdu_density = n;
 }
}
