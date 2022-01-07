
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_local {int tasklet; int tx_status_drop; int skb_queue_unreliable; int skb_queue; } ;
struct ieee80211_hw {int dummy; } ;


 int I802_DEBUG_INC (int ) ;
 int IEEE80211_IRQSAFE_QUEUE_LIMIT ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_STATUS_MSG ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void ieee80211_tx_status_irqsafe(struct ieee80211_hw *hw,
     struct sk_buff *skb)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int tmp;

 skb->pkt_type = IEEE80211_TX_STATUS_MSG;
 skb_queue_tail(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS ?
         &local->skb_queue : &local->skb_queue_unreliable, skb);
 tmp = skb_queue_len(&local->skb_queue) +
  skb_queue_len(&local->skb_queue_unreliable);
 while (tmp > IEEE80211_IRQSAFE_QUEUE_LIMIT &&
        (skb = skb_dequeue(&local->skb_queue_unreliable))) {
  ieee80211_free_txskb(hw, skb);
  tmp--;
  I802_DEBUG_INC(local->tx_status_drop);
 }
 tasklet_schedule(&local->tasklet);
}
