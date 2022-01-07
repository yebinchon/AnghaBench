
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int _xmit_lock; } ;
struct net_device {int dummy; } ;


 int lockdep_set_class_and_subclass (int *,int *,int) ;
 int vlan_netdev_xmit_lock_key ;

__attribute__((used)) static void vlan_dev_set_lockdep_one(struct net_device *dev,
         struct netdev_queue *txq,
         void *_subclass)
{
 lockdep_set_class_and_subclass(&txq->_xmit_lock,
           &vlan_netdev_xmit_lock_key,
           *(int *)_subclass);
}
