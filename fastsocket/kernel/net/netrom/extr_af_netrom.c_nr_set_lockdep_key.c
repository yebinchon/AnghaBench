
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_list_lock; } ;


 int lockdep_set_class (int *,int *) ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int *) ;
 int nr_netdev_addr_lock_key ;
 int nr_set_lockdep_one ;

__attribute__((used)) static void nr_set_lockdep_key(struct net_device *dev)
{
 lockdep_set_class(&dev->addr_list_lock, &nr_netdev_addr_lock_key);
 netdev_for_each_tx_queue(dev, nr_set_lockdep_one, ((void*)0));
}
