
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct netpoll_info {int arp_tx; } ;
struct net_device_ops {int (* ndo_poll_controller ) (struct net_device*) ;} ;
struct net_device {int priv_flags; int npinfo; struct net_device* master; struct net_device_ops* netdev_ops; } ;


 int IFF_SLAVE ;
 int netif_running (struct net_device*) ;
 int poll_napi (struct net_device*) ;
 struct netpoll_info* rcu_dereference_bh (int ) ;
 int service_arp_queue (struct netpoll_info*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct net_device*) ;
 int zap_completion_queue () ;

void netpoll_poll_dev(struct net_device *dev)
{
 const struct net_device_ops *ops;
 struct netpoll_info *ni = rcu_dereference_bh(dev->npinfo);

 if (!dev || !netif_running(dev))
  return;

 ops = dev->netdev_ops;
 if (!ops->ndo_poll_controller)
  return;


 ops->ndo_poll_controller(dev);

 poll_napi(dev);

 if (dev->priv_flags & IFF_SLAVE) {
  if (ni) {
   struct net_device *bond_dev = dev->master;
   struct sk_buff *skb;
   struct netpoll_info *bond_ni = rcu_dereference_bh(bond_dev->npinfo);
   while ((skb = skb_dequeue(&ni->arp_tx))) {
    skb->dev = bond_dev;
    skb_queue_tail(&bond_ni->arp_tx, skb);
   }
  }
 }

 service_arp_queue(ni);

 zap_completion_queue();
}
