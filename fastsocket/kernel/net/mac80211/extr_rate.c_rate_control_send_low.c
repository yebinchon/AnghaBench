
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_tx_rate_control {TYPE_3__* bss_conf; scalar_t__ bss; int hw; struct ieee80211_supported_band* sband; int skb; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_supported_band {size_t band; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {int* mcast_rate; int basic_rates; } ;
struct TYPE_4__ {int idx; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (int ) ;
 int __rate_control_send_low (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,struct ieee80211_tx_info*) ;
 scalar_t__ rc_no_data_or_no_ack_use_min (struct ieee80211_tx_rate_control*) ;
 int rc_send_low_broadcast (int*,int ,struct ieee80211_supported_band*) ;

bool rate_control_send_low(struct ieee80211_sta *sta,
      void *priv_sta,
      struct ieee80211_tx_rate_control *txrc)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(txrc->skb);
 struct ieee80211_supported_band *sband = txrc->sband;
 int mcast_rate;

 if (!sta || !priv_sta || rc_no_data_or_no_ack_use_min(txrc)) {
  __rate_control_send_low(txrc->hw, sband, sta, info);

  if (!sta && txrc->bss) {
   mcast_rate = txrc->bss_conf->mcast_rate[sband->band];
   if (mcast_rate > 0) {
    info->control.rates[0].idx = mcast_rate - 1;
    return 1;
   }

   rc_send_low_broadcast(&info->control.rates[0].idx,
           txrc->bss_conf->basic_rates,
           sband);
  }
  return 1;
 }
 return 0;
}
