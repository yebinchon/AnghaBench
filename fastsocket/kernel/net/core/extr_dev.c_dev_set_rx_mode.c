
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __dev_set_rx_mode (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

void dev_set_rx_mode(struct net_device *dev)
{
 netif_addr_lock_bh(dev);
 __dev_set_rx_mode(dev);
 netif_addr_unlock_bh(dev);
}
