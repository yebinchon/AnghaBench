
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netpoll_info {int arp_tx; } ;


 int netpoll_arp_reply (struct sk_buff*,struct netpoll_info*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void service_arp_queue(struct netpoll_info *npi)
{
 if (npi) {
  struct sk_buff *skb;

  while ((skb = skb_dequeue(&npi->arp_tx)))
   netpoll_arp_reply(skb, npi);
 }
}
