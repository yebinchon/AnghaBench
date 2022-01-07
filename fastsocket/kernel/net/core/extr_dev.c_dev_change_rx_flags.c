
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int (* ndo_change_rx_flags ) (struct net_device*,int) ;} ;
struct net_device {int flags; struct net_device_ops* netdev_ops; } ;


 int IFF_UP ;
 int stub1 (struct net_device*,int) ;

__attribute__((used)) static void dev_change_rx_flags(struct net_device *dev, int flags)
{
 const struct net_device_ops *ops = dev->netdev_ops;

 if ((dev->flags & IFF_UP) && ops->ndo_change_rx_flags)
  ops->ndo_change_rx_flags(dev, flags);
}
