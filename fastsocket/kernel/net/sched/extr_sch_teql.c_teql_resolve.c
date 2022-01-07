
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netdev_queue {int * qdisc; } ;
struct net_device {int * header_ops; } ;
struct TYPE_2__ {int * neighbour; } ;


 int ENODEV ;
 int __teql_resolve (struct sk_buff*,struct sk_buff*,struct net_device*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int noop_qdisc ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline int teql_resolve(struct sk_buff *skb,
          struct sk_buff *skb_res, struct net_device *dev)
{
 struct netdev_queue *txq = netdev_get_tx_queue(dev, 0);
 if (txq->qdisc == &noop_qdisc)
  return -ENODEV;

 if (dev->header_ops == ((void*)0) ||
     skb_dst(skb) == ((void*)0) ||
     skb_dst(skb)->neighbour == ((void*)0))
  return 0;
 return __teql_resolve(skb, skb_res, dev);
}
