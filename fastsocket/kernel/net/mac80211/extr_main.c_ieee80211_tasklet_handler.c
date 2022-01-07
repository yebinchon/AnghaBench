
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; } ;
struct ieee80211_local {int hw; int skb_queue_unreliable; int skb_queue; } ;




 int WARN (int,char*,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_rx (int *,struct sk_buff*) ;
 int ieee80211_tx_status (int *,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void ieee80211_tasklet_handler(unsigned long data)
{
 struct ieee80211_local *local = (struct ieee80211_local *) data;
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&local->skb_queue)) ||
        (skb = skb_dequeue(&local->skb_queue_unreliable))) {
  switch (skb->pkt_type) {
  case 129:


   skb->pkt_type = 0;
   ieee80211_rx(&local->hw, skb);
   break;
  case 128:
   skb->pkt_type = 0;
   ieee80211_tx_status(&local->hw, skb);
   break;
  default:
   WARN(1, "mac80211: Packet is of unknown type %d\n",
        skb->pkt_type);
   dev_kfree_skb(skb);
   break;
  }
 }
}
