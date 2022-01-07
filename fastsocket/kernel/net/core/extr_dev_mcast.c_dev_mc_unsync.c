
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mc_count; int mc_list; } ;


 int __dev_addr_unsync (int *,int *,int *,int *) ;
 int __dev_set_rx_mode (struct net_device*) ;
 int netif_addr_lock (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

void dev_mc_unsync(struct net_device *to, struct net_device *from)
{
 netif_addr_lock_bh(from);
 netif_addr_lock(to);

 __dev_addr_unsync(&to->mc_list, &to->mc_count,
     &from->mc_list, &from->mc_count);
 __dev_set_rx_mode(to);

 netif_addr_unlock(to);
 netif_addr_unlock_bh(from);
}
