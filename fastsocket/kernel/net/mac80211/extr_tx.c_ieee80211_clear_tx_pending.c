
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int queues; } ;
struct ieee80211_local {TYPE_1__ hw; int * pending; } ;


 int ieee80211_free_txskb (TYPE_1__*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

void ieee80211_clear_tx_pending(struct ieee80211_local *local)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < local->hw.queues; i++) {
  while ((skb = skb_dequeue(&local->pending[i])) != ((void*)0))
   ieee80211_free_txskb(&local->hw, skb);
 }
}
