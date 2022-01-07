
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {unsigned int num_tx_queues; scalar_t__ reg_state; unsigned int real_num_tx_queues; } ;
struct TYPE_3__ {scalar_t__ num_tc; } ;
struct TYPE_4__ {TYPE_1__ qos_data; } ;


 int ASSERT_RTNL () ;
 scalar_t__ NETREG_REGISTERED ;
 scalar_t__ NETREG_UNREGISTERING ;
 TYPE_2__* netdev_extended (struct net_device*) ;
 int netdev_queue_update_kobjects (struct net_device*,unsigned int,unsigned int) ;
 int netif_setup_tc (struct net_device*,unsigned int) ;
 int qdisc_reset_all_tx_gt (struct net_device*,unsigned int) ;

void netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
{
 int rc;

 if (txq < 1 || txq > dev->num_tx_queues)
  return;

 if (dev->reg_state == NETREG_REGISTERED ||
     dev->reg_state == NETREG_UNREGISTERING) {
  ASSERT_RTNL();

  rc = netdev_queue_update_kobjects(dev, dev->real_num_tx_queues,
        txq);
  if (netdev_extended(dev)->qos_data.num_tc)
   netif_setup_tc(dev, txq);

  if (txq < dev->real_num_tx_queues)
   qdisc_reset_all_tx_gt(dev, txq);
 }

 dev->real_num_tx_queues = txq;
}
