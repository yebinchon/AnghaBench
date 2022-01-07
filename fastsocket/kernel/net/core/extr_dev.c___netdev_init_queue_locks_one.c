
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int xmit_lock_owner; int _xmit_lock; } ;
struct net_device {int type; } ;


 int netdev_set_xmit_lockdep_class (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __netdev_init_queue_locks_one(struct net_device *dev,
       struct netdev_queue *dev_queue,
       void *_unused)
{
 spin_lock_init(&dev_queue->_xmit_lock);
 netdev_set_xmit_lockdep_class(&dev_queue->_xmit_lock, dev->type);
 dev_queue->xmit_lock_owner = -1;
}
