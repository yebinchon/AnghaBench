
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int uc; } ;


 int __dev_set_rx_mode (struct net_device*) ;
 int __hw_addr_unsync (int *,int *,scalar_t__) ;
 int netif_addr_lock (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

void dev_unicast_unsync(struct net_device *to, struct net_device *from)
{
 if (to->addr_len != from->addr_len)
  return;

 netif_addr_lock_bh(from);
 netif_addr_lock(to);
 __hw_addr_unsync(&to->uc, &from->uc, to->addr_len);
 __dev_set_rx_mode(to);
 netif_addr_unlock(to);
 netif_addr_unlock_bh(from);
}
