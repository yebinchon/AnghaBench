
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rx_status {size_t band; int flag; int rate_idx; int vht_nss; scalar_t__ rx_flags; } ;
struct ieee80211_rate {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {int in_reconfig; int started; scalar_t__ suspended; scalar_t__ quiescing; TYPE_2__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {struct ieee80211_supported_band** bands; } ;


 size_t IEEE80211_NUM_BANDS ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int RX_FLAG_HT ;
 int RX_FLAG_VHT ;
 scalar_t__ WARN (int,char*,int,int) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ONCE (int,char*,int,int) ;
 int WARN_ON_ONCE (int) ;
 int __ieee80211_rx_handle_packet (struct ieee80211_hw*,struct sk_buff*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 struct sk_buff* ieee80211_rx_monitor (struct ieee80211_local*,struct sk_buff*,struct ieee80211_rate*) ;
 int ieee80211_tpt_led_trig_rx (struct ieee80211_local*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ softirq_count () ;
 scalar_t__ unlikely (int) ;

void ieee80211_rx(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct ieee80211_rate *rate = ((void*)0);
 struct ieee80211_supported_band *sband;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);

 WARN_ON_ONCE(softirq_count() == 0);

 if (WARN_ON(status->band >= IEEE80211_NUM_BANDS))
  goto drop;

 sband = local->hw.wiphy->bands[status->band];
 if (WARN_ON(!sband))
  goto drop;
 if (unlikely(local->quiescing || local->suspended))
  goto drop;


 if (unlikely(local->in_reconfig))
  goto drop;





 if (WARN_ON(!local->started))
  goto drop;

 if (likely(!(status->flag & RX_FLAG_FAILED_PLCP_CRC))) {





  if (status->flag & RX_FLAG_HT) {
   if (WARN(status->rate_idx > 76,
     "Rate marked as an HT rate but passed "
     "status->rate_idx is not "
     "an MCS index [0-76]: %d (0x%02x)\n",
     status->rate_idx,
     status->rate_idx))
    goto drop;
  } else if (status->flag & RX_FLAG_VHT) {
   if (WARN_ONCE(status->rate_idx > 9 ||
          !status->vht_nss ||
          status->vht_nss > 8,
          "Rate marked as a VHT rate but data is invalid: MCS: %d, NSS: %d\n",
          status->rate_idx, status->vht_nss))
    goto drop;
  } else {
   if (WARN_ON(status->rate_idx >= sband->n_bitrates))
    goto drop;
   rate = &sband->bitrates[status->rate_idx];
  }
 }

 status->rx_flags = 0;






 rcu_read_lock();







 skb = ieee80211_rx_monitor(local, skb, rate);
 if (!skb) {
  rcu_read_unlock();
  return;
 }

 ieee80211_tpt_led_trig_rx(local,
   ((struct ieee80211_hdr *)skb->data)->frame_control,
   skb->len);
 __ieee80211_rx_handle_packet(hw, skb);

 rcu_read_unlock();

 return;
 drop:
 kfree_skb(skb);
}
