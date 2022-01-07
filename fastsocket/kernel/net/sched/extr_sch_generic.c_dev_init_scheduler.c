
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timer; int rx_queue; int * qdisc; } ;


 int dev_init_scheduler_queue (struct net_device*,int *,int *) ;
 int dev_watchdog ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,int *,int *),int *) ;
 int noop_qdisc ;
 int setup_timer (int *,int ,unsigned long) ;

void dev_init_scheduler(struct net_device *dev)
{
 dev->qdisc = &noop_qdisc;
 netdev_for_each_tx_queue(dev, dev_init_scheduler_queue, &noop_qdisc);
 dev_init_scheduler_queue(dev, &dev->rx_queue, &noop_qdisc);

 setup_timer(&dev->watchdog_timer, dev_watchdog, (unsigned long)dev);
}
