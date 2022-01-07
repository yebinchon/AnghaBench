
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netpoll_info {int txq; int tx_work; int arp_tx; int refcnt; int rx_lock; int rx_flags; int rx_np; } ;
struct netpoll {TYPE_1__* dev; } ;
struct net_device_ops {int (* ndo_netpoll_cleanup ) (TYPE_1__*) ;} ;
struct TYPE_2__ {struct netpoll_info* npinfo; struct net_device_ops* netdev_ops; } ;


 int NETPOLL_RX_ENABLED ;
 int __skb_queue_purge (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cancel_rearming_delayed_work (int *) ;
 int kfree (struct netpoll_info*) ;
 int rcu_assign_pointer (struct netpoll_info*,int *) ;
 int skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*) ;
 int synchronize_rcu_bh () ;

void __netpoll_cleanup(struct netpoll *np)
{
 struct netpoll_info *npinfo;
 unsigned long flags;

 npinfo = np->dev->npinfo;
 if (!npinfo)
  return;

 if (!npinfo->rx_np) {
  spin_lock_irqsave(&npinfo->rx_lock, flags);
  npinfo->rx_flags &= ~NETPOLL_RX_ENABLED;
  spin_unlock_irqrestore(&npinfo->rx_lock, flags);
 }

 if (atomic_dec_and_test(&npinfo->refcnt)) {
  const struct net_device_ops *ops;

  ops = np->dev->netdev_ops;
  if (ops->ndo_netpoll_cleanup)
   ops->ndo_netpoll_cleanup(np->dev);

  rcu_assign_pointer(np->dev->npinfo, ((void*)0));


  synchronize_rcu_bh();

  skb_queue_purge(&npinfo->arp_tx);
  skb_queue_purge(&npinfo->txq);
  cancel_rearming_delayed_work(&npinfo->tx_work);


  __skb_queue_purge(&npinfo->txq);
  kfree(npinfo);
 }
}
