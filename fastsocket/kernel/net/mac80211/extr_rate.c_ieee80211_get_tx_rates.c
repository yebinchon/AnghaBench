
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_rate {scalar_t__ idx; } ;
struct ieee80211_tx_info {size_t band; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct TYPE_5__ {TYPE_3__ hw; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int __rate_control_send_low (TYPE_3__*,struct ieee80211_supported_band*,struct ieee80211_sta*,struct ieee80211_tx_info*) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int rate_control_apply_mask (struct ieee80211_sub_if_data*,struct ieee80211_sta*,struct ieee80211_supported_band*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*,int) ;
 int rate_control_fill_sta_table (struct ieee80211_sta*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*,int) ;
 int rate_fixup_ratelist (struct ieee80211_vif*,struct ieee80211_supported_band*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_get_tx_rates(struct ieee80211_vif *vif,
       struct ieee80211_sta *sta,
       struct sk_buff *skb,
       struct ieee80211_tx_rate *dest,
       int max_rates)
{
 struct ieee80211_sub_if_data *sdata;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_supported_band *sband;

 rate_control_fill_sta_table(sta, info, dest, max_rates);

 if (!vif)
  return;

 sdata = vif_to_sdata(vif);
 sband = sdata->local->hw.wiphy->bands[info->band];

 if (ieee80211_is_data(hdr->frame_control))
  rate_control_apply_mask(sdata, sta, sband, info, dest, max_rates);

 if (dest[0].idx < 0)
  __rate_control_send_low(&sdata->local->hw, sband, sta, info);

 if (sta)
  rate_fixup_ratelist(vif, sband, info, dest, max_rates);
}
