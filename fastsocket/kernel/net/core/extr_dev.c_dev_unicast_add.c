
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int uc; } ;


 int ASSERT_RTNL () ;
 int NETDEV_HW_ADDR_T_UNICAST ;
 int __dev_set_rx_mode (struct net_device*) ;
 int __hw_addr_add (int *,void*,int ,int ) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

int dev_unicast_add(struct net_device *dev, void *addr)
{
 int err;

 ASSERT_RTNL();

 netif_addr_lock_bh(dev);
 err = __hw_addr_add(&dev->uc, addr, dev->addr_len,
       NETDEV_HW_ADDR_T_UNICAST);
 if (!err)
  __dev_set_rx_mode(dev);
 netif_addr_unlock_bh(dev);
 return err;
}
