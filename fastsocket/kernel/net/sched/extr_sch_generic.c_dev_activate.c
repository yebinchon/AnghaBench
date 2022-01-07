
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; int rx_queue; int * qdisc; } ;


 int attach_default_qdiscs (struct net_device*) ;
 int dev_watchdog_up (struct net_device*) ;
 int jiffies ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,int *,int *),int*) ;
 int netif_carrier_ok (struct net_device*) ;
 int noop_qdisc ;
 int transition_one_qdisc (struct net_device*,int *,int *) ;

void dev_activate(struct net_device *dev)
{
 int need_watchdog;







 if (dev->qdisc == &noop_qdisc)
  attach_default_qdiscs(dev);

 if (!netif_carrier_ok(dev))

  return;

 need_watchdog = 0;
 netdev_for_each_tx_queue(dev, transition_one_qdisc, &need_watchdog);
 transition_one_qdisc(dev, &dev->rx_queue, ((void*)0));

 if (need_watchdog) {
  dev->trans_start = jiffies;
  dev_watchdog_up(dev);
 }
}
