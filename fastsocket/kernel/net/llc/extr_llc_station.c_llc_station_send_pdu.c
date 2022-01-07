
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int mac_pdu_q; } ;


 scalar_t__ dev_queue_xmit (struct sk_buff*) ;
 TYPE_1__ llc_main_station ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void llc_station_send_pdu(struct sk_buff *skb)
{
 skb_queue_tail(&llc_main_station.mac_pdu_q, skb);
 while ((skb = skb_dequeue(&llc_main_station.mac_pdu_q)) != ((void*)0))
  if (dev_queue_xmit(skb))
   break;
}
