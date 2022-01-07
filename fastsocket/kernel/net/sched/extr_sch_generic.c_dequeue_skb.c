
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {struct sk_buff* (* dequeue ) (struct Qdisc*) ;TYPE_1__ q; struct sk_buff* gso_skb; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_tx_queue_frozen (struct netdev_queue*) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 scalar_t__ unlikely (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *dequeue_skb(struct Qdisc *q)
{
 struct sk_buff *skb = q->gso_skb;

 if (unlikely(skb)) {
  struct net_device *dev = qdisc_dev(q);
  struct netdev_queue *txq;


  txq = netdev_get_tx_queue(dev, skb_get_queue_mapping(skb));
  if (!netif_tx_queue_stopped(txq) &&
      !netif_tx_queue_frozen(txq)) {
   q->gso_skb = ((void*)0);
   q->q.qlen--;
  } else
   skb = ((void*)0);
 } else {
  skb = q->dequeue(q);
 }

 return skb;
}
