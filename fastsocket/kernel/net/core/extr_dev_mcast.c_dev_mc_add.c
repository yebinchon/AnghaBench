
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mc_count; int mc_list; } ;


 int __dev_addr_add (int *,int *,void*,int,int) ;
 int __dev_set_rx_mode (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

int dev_mc_add(struct net_device *dev, void *addr, int alen, int glbl)
{
 int err;

 netif_addr_lock_bh(dev);
 err = __dev_addr_add(&dev->mc_list, &dev->mc_count, addr, alen, glbl);
 if (!err)
  __dev_set_rx_mode(dev);
 netif_addr_unlock_bh(dev);
 return err;
}
