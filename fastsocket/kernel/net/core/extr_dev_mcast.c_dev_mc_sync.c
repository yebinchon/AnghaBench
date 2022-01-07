
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mc_count; int mc_list; } ;


 int __dev_addr_sync (int *,int *,int *,int *) ;
 int __dev_set_rx_mode (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

int dev_mc_sync(struct net_device *to, struct net_device *from)
{
 int err = 0;

 netif_addr_lock_bh(to);
 err = __dev_addr_sync(&to->mc_list, &to->mc_count,
         &from->mc_list, &from->mc_count);
 if (!err)
  __dev_set_rx_mode(to);
 netif_addr_unlock_bh(to);

 return err;
}
