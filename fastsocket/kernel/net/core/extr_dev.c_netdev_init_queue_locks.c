
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_queue; } ;


 int __netdev_init_queue_locks_one (struct net_device*,int *,int *) ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,int *,int *),int *) ;

__attribute__((used)) static void netdev_init_queue_locks(struct net_device *dev)
{
 netdev_for_each_tx_queue(dev, __netdev_init_queue_locks_one, ((void*)0));
 __netdev_init_queue_locks_one(dev, &dev->rx_queue, ((void*)0));
}
