
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int _xmit_lock; } ;
struct net_device {int dummy; } ;


 int lockdep_set_class (int *,int *) ;
 int rose_netdev_xmit_lock_key ;

__attribute__((used)) static void rose_set_lockdep_one(struct net_device *dev,
     struct netdev_queue *txq,
     void *_unused)
{
 lockdep_set_class(&txq->_xmit_lock, &rose_netdev_xmit_lock_key);
}
