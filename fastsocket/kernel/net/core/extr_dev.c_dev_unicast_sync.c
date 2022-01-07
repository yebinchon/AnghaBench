
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int uc; } ;


 int EINVAL ;
 int __dev_set_rx_mode (struct net_device*) ;
 int __hw_addr_sync (int *,int *,scalar_t__) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

int dev_unicast_sync(struct net_device *to, struct net_device *from)
{
 int err = 0;

 if (to->addr_len != from->addr_len)
  return -EINVAL;

 netif_addr_lock_bh(to);
 err = __hw_addr_sync(&to->uc, &from->uc, to->addr_len);
 if (!err)
  __dev_set_rx_mode(to);
 netif_addr_unlock_bh(to);
 return err;
}
