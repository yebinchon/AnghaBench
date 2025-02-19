
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ieee80211_tx_info {int band; int flags; int hw_queue; } ;
struct ieee80211_tx_data {int sta; int skbs; } ;
struct TYPE_3__ {int * hw_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef scalar_t__ ieee80211_tx_result ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_HW_QUEUE_CONTROL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_TX_OFFCHAN ;
 scalar_t__ TX_DROP ;
 scalar_t__ TX_QUEUED ;
 int __ieee80211_tx (struct ieee80211_local*,int *,int,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_free_txskb (TYPE_2__*,struct sk_buff*) ;
 scalar_t__ ieee80211_tx_prepare (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,struct sk_buff*) ;
 int invoke_tx_handlers (struct ieee80211_tx_data*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ieee80211_tx(struct ieee80211_sub_if_data *sdata,
    struct sk_buff *skb, bool txpending,
    enum ieee80211_band band)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_tx_data tx;
 ieee80211_tx_result res_prepare;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 bool result = 1;
 int led_len;

 if (unlikely(skb->len < 10)) {
  dev_kfree_skb(skb);
  return 1;
 }


 led_len = skb->len;
 res_prepare = ieee80211_tx_prepare(sdata, &tx, skb);

 if (unlikely(res_prepare == TX_DROP)) {
  ieee80211_free_txskb(&local->hw, skb);
  return 1;
 } else if (unlikely(res_prepare == TX_QUEUED)) {
  return 1;
 }

 info->band = band;


 if (!(info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) ||
     !(local->hw.flags & IEEE80211_HW_QUEUE_CONTROL))
  info->hw_queue =
   sdata->vif.hw_queue[skb_get_queue_mapping(skb)];

 if (!invoke_tx_handlers(&tx))
  result = __ieee80211_tx(local, &tx.skbs, led_len,
     tx.sta, txpending);

 return result;
}
