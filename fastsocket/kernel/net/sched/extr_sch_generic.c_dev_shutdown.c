
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timer; int * qdisc; int rx_queue; } ;


 int WARN_ON (int ) ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,int *,int *),int *) ;
 int noop_qdisc ;
 int qdisc_destroy (int *) ;
 int shutdown_scheduler_queue (struct net_device*,int *,int *) ;
 int timer_pending (int *) ;

void dev_shutdown(struct net_device *dev)
{
 netdev_for_each_tx_queue(dev, shutdown_scheduler_queue, &noop_qdisc);
 shutdown_scheduler_queue(dev, &dev->rx_queue, &noop_qdisc);
 qdisc_destroy(dev->qdisc);
 dev->qdisc = &noop_qdisc;

 WARN_ON(timer_pending(&dev->watchdog_timer));
}
