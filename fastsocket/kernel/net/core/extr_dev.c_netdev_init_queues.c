
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_global_lock; int rx_queue; } ;


 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,int *,int *),int *) ;
 int netdev_init_one_queue (struct net_device*,int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void netdev_init_queues(struct net_device *dev)
{
 netdev_init_one_queue(dev, &dev->rx_queue, ((void*)0));
 netdev_for_each_tx_queue(dev, netdev_init_one_queue, ((void*)0));
 spin_lock_init(&dev->tx_global_lock);
}
