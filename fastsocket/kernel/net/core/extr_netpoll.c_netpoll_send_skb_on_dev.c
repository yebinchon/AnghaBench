
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netpoll_info {int tx_work; int txq; } ;
struct netpoll {TYPE_1__* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device_ops {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct net_device {int name; int priv_flags; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int npinfo; } ;


 int IFF_IN_NETPOLL ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 unsigned long USEC_PER_POLL ;
 int WARN_ONCE (int,char*,int ,int (*) (struct sk_buff*,struct net_device*)) ;
 int WARN_ON_ONCE (int) ;
 int __kfree_skb (struct sk_buff*) ;
 scalar_t__ __netif_tx_trylock (struct netdev_queue*) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 int irqs_disabled () ;
 unsigned long jiffies_to_usecs (int) ;
 struct netdev_queue* netdev_pick_tx (struct net_device*,struct sk_buff*) ;
 int netif_device_present (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netpoll_owner_active (struct net_device*) ;
 int netpoll_poll (struct netpoll*) ;
 struct netpoll_info* rcu_dereference_bh (int ) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 int txq_trans_update (struct netdev_queue*) ;
 int udelay (unsigned long) ;

void netpoll_send_skb_on_dev(struct netpoll *np, struct sk_buff *skb,
        struct net_device *dev)
{
 int status = NETDEV_TX_BUSY;
 unsigned long tries;
 const struct net_device_ops *ops = dev->netdev_ops;

 struct netpoll_info *npinfo;

 WARN_ON_ONCE(!irqs_disabled());

 npinfo = rcu_dereference_bh(np->dev->npinfo);
 if (!npinfo || !netif_running(dev) || !netif_device_present(dev)) {
  __kfree_skb(skb);
  return;
 }


 if (skb_queue_len(&npinfo->txq) == 0 && !netpoll_owner_active(dev)) {
  struct netdev_queue *txq;

  txq = netdev_pick_tx(dev, skb);


  for (tries = jiffies_to_usecs(1)/USEC_PER_POLL;
       tries > 0; --tries) {
   if (__netif_tx_trylock(txq)) {
    if (!netif_tx_queue_stopped(txq)) {
     dev->priv_flags |= IFF_IN_NETPOLL;
     status = ops->ndo_start_xmit(skb, dev);
     dev->priv_flags &= ~IFF_IN_NETPOLL;
     if (status == NETDEV_TX_OK)
      txq_trans_update(txq);
    }
    __netif_tx_unlock(txq);

    if (status == NETDEV_TX_OK)
     break;

   }


   netpoll_poll(np);

   udelay(USEC_PER_POLL);
  }

  WARN_ONCE(!irqs_disabled(),
   "netpoll_send_skb_on_dev(): %s enabled interrupts in poll (%pF)\n",
   dev->name, ops->ndo_start_xmit);

 }

 if (status != NETDEV_TX_OK) {
  skb_queue_tail(&npinfo->txq, skb);
  schedule_delayed_work(&npinfo->tx_work,0);
 }
}
