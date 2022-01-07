
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_list_lock; } ;


 int lockdep_set_class_and_subclass (int *,int *,int) ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int*) ;
 int vlan_dev_set_lockdep_one ;
 int vlan_netdev_addr_lock_key ;

__attribute__((used)) static void vlan_dev_set_lockdep_class(struct net_device *dev, int subclass)
{
 lockdep_set_class_and_subclass(&dev->addr_list_lock,
           &vlan_netdev_addr_lock_key,
           subclass);
 netdev_for_each_tx_queue(dev, vlan_dev_set_lockdep_one, &subclass);
}
