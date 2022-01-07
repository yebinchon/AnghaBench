
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned long trans_start; unsigned int num_tx_queues; } ;
struct TYPE_2__ {unsigned long trans_start; } ;


 TYPE_1__* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

unsigned long dev_trans_start(struct net_device *dev)
{
 unsigned long val, res = dev->trans_start;
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  val = netdev_get_tx_queue(dev, i)->trans_start;
  if (val && time_after(val, res))
   res = val;
 }
 dev->trans_start = res;
 return res;
}
