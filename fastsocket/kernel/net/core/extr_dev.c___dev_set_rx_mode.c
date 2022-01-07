
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {int (* ndo_set_multicast_list ) (struct net_device*) ;int (* ndo_set_rx_mode ) (struct net_device*) ;} ;
struct net_device {int flags; int uc_promisc; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int IFF_NO_UNICAST_FLT ;
 int IFF_UP ;
 int __dev_set_promiscuity (struct net_device*,int) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 scalar_t__ netdev_uc_empty (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

void __dev_set_rx_mode(struct net_device *dev)
{
 const struct net_device_ops *ops = dev->netdev_ops;


 if (!(dev->flags&IFF_UP))
  return;

 if (!netif_device_present(dev))
  return;

 if (ops->ndo_set_rx_mode && !(netdev_extended(dev)->ext_priv_flags &
          IFF_NO_UNICAST_FLT))
  ops->ndo_set_rx_mode(dev);
 else {



  if (!netdev_uc_empty(dev) && !dev->uc_promisc) {
   __dev_set_promiscuity(dev, 1);
   dev->uc_promisc = 1;
  } else if (netdev_uc_empty(dev) && dev->uc_promisc) {
   __dev_set_promiscuity(dev, -1);
   dev->uc_promisc = 0;
  }

  if (ops->ndo_set_multicast_list)
   ops->ndo_set_multicast_list(dev);
 }
}
