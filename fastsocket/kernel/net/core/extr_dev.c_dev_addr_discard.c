
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mc_count; int mc_list; } ;


 int __dev_addr_discard (int *) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

__attribute__((used)) static void dev_addr_discard(struct net_device *dev)
{
 netif_addr_lock_bh(dev);

 __dev_addr_discard(&dev->mc_list);
 dev->mc_count = 0;

 netif_addr_unlock_bh(dev);
}
