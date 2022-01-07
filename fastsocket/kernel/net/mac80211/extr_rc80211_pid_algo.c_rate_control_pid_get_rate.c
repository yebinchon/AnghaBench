
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rc_pid_sta_info {int txrate_idx; int events; } ;
struct ieee80211_tx_rate_control {TYPE_2__* hw; scalar_t__ rts; struct ieee80211_supported_band* sband; struct sk_buff* skb; } ;
struct TYPE_9__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {TYPE_4__ control; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_5__* bitrates; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_10__ {int bitrate; } ;
struct TYPE_8__ {int idx; int count; } ;
struct TYPE_6__ {int short_frame_max_tx_count; int long_frame_max_tx_count; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int rate_control_pid_event_tx_rate (int *,int,int ) ;
 scalar_t__ rate_control_send_low (struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;

__attribute__((used)) static void
rate_control_pid_get_rate(void *priv, struct ieee80211_sta *sta,
     void *priv_sta,
     struct ieee80211_tx_rate_control *txrc)
{
 struct sk_buff *skb = txrc->skb;
 struct ieee80211_supported_band *sband = txrc->sband;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct rc_pid_sta_info *spinfo = priv_sta;
 int rateidx;

 if (txrc->rts)
  info->control.rates[0].count =
   txrc->hw->conf.long_frame_max_tx_count;
 else
  info->control.rates[0].count =
   txrc->hw->conf.short_frame_max_tx_count;


 if (rate_control_send_low(sta, priv_sta, txrc))
  return;

 rateidx = spinfo->txrate_idx;

 if (rateidx >= sband->n_bitrates)
  rateidx = sband->n_bitrates - 1;

 info->control.rates[0].idx = rateidx;





}
