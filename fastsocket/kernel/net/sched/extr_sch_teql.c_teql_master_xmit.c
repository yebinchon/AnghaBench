
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct teql_master {struct Qdisc* slaves; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {unsigned int tx_bytes; int tx_dropped; int tx_packets; struct Qdisc* qdisc_sleeping; } ;
struct net_device_ops {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; struct net_device_ops* netdev_ops; } ;
struct Qdisc {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 void* NEXT_SLAVE (struct Qdisc*) ;
 scalar_t__ __netif_subqueue_stopped (struct net_device*,int) ;
 int __netif_tx_trylock (struct netdev_queue*) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct teql_master* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_tx_queue_frozen (struct netdev_queue*) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_wake_queue (struct net_device*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 int teql_resolve (struct sk_buff*,struct sk_buff*,struct net_device*) ;
 int txq_trans_update (struct netdev_queue*) ;

__attribute__((used)) static netdev_tx_t teql_master_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct teql_master *master = netdev_priv(dev);
 struct netdev_queue *txq = netdev_get_tx_queue(dev, 0);
 struct Qdisc *start, *q;
 int busy;
 int nores;
 int subq = skb_get_queue_mapping(skb);
 struct sk_buff *skb_res = ((void*)0);

 start = master->slaves;

restart:
 nores = 0;
 busy = 0;

 if ((q = start) == ((void*)0))
  goto drop;

 do {
  struct net_device *slave = qdisc_dev(q);
  struct netdev_queue *slave_txq = netdev_get_tx_queue(slave, 0);
  const struct net_device_ops *slave_ops = slave->netdev_ops;

  if (slave_txq->qdisc_sleeping != q)
   continue;
  if (__netif_subqueue_stopped(slave, subq) ||
      !netif_running(slave)) {
   busy = 1;
   continue;
  }

  switch (teql_resolve(skb, skb_res, slave)) {
  case 0:
   if (__netif_tx_trylock(slave_txq)) {
    unsigned int length = qdisc_pkt_len(skb);

    if (!netif_tx_queue_stopped(slave_txq) &&
        !netif_tx_queue_frozen(slave_txq) &&
        slave_ops->ndo_start_xmit(skb, slave) == NETDEV_TX_OK) {
     txq_trans_update(slave_txq);
     __netif_tx_unlock(slave_txq);
     master->slaves = NEXT_SLAVE(q);
     netif_wake_queue(dev);
     txq->tx_packets++;
     txq->tx_bytes += length;
     return NETDEV_TX_OK;
    }
    __netif_tx_unlock(slave_txq);
   }
   if (netif_queue_stopped(dev))
    busy = 1;
   break;
  case 1:
   master->slaves = NEXT_SLAVE(q);
   return NETDEV_TX_OK;
  default:
   nores = 1;
   break;
  }
  __skb_pull(skb, skb_network_offset(skb));
 } while ((q = NEXT_SLAVE(q)) != start);

 if (nores && skb_res == ((void*)0)) {
  skb_res = skb;
  goto restart;
 }

 if (busy) {
  netif_stop_queue(dev);
  return NETDEV_TX_BUSY;
 }
 dev->stats.tx_errors++;

drop:
 txq->tx_dropped++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
