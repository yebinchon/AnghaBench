
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;

void ieee80211_purge_tx_queue(struct ieee80211_hw *hw,
         struct sk_buff_head *skbs)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(skbs)))
  ieee80211_free_txskb(hw, skb);
}
