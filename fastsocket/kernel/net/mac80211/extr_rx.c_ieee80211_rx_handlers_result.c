
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ieee80211_supported_band {struct ieee80211_rate* bitrates; } ;
struct ieee80211_rx_status {size_t band; int flag; size_t rate_idx; } ;
struct ieee80211_rx_data {TYPE_6__* sdata; int skb; TYPE_4__* sta; TYPE_3__* local; } ;
struct ieee80211_rate {int dummy; } ;
typedef int ieee80211_rx_result ;
struct TYPE_12__ {TYPE_5__* local; } ;
struct TYPE_11__ {int rx_handlers_queued; int rx_handlers_drop; } ;
struct TYPE_10__ {int rx_dropped; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_9__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;


 int I802_DEBUG_INC (int ) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (int ) ;



 int RX_FLAG_HT ;
 int RX_FLAG_VHT ;

 int dev_kfree_skb (int ) ;
 int ieee80211_rx_cooked_monitor (struct ieee80211_rx_data*,struct ieee80211_rate*) ;

__attribute__((used)) static void ieee80211_rx_handlers_result(struct ieee80211_rx_data *rx,
      ieee80211_rx_result res)
{
 switch (res) {
 case 130:
  I802_DEBUG_INC(rx->sdata->local->rx_handlers_drop);
  if (rx->sta)
   rx->sta->rx_dropped++;

 case 131: {
  struct ieee80211_rate *rate = ((void*)0);
  struct ieee80211_supported_band *sband;
  struct ieee80211_rx_status *status;

  status = IEEE80211_SKB_RXCB((rx->skb));

  sband = rx->local->hw.wiphy->bands[status->band];
  if (!(status->flag & RX_FLAG_HT) &&
      !(status->flag & RX_FLAG_VHT))
   rate = &sband->bitrates[status->rate_idx];

  ieee80211_rx_cooked_monitor(rx, rate);
  break;
  }
 case 129:
  I802_DEBUG_INC(rx->sdata->local->rx_handlers_drop);
  if (rx->sta)
   rx->sta->rx_dropped++;
  dev_kfree_skb(rx->skb);
  break;
 case 128:
  I802_DEBUG_INC(rx->sdata->local->rx_handlers_queued);
  break;
 }
}
