
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_tc_txq {unsigned int offset; unsigned int count; } ;
struct netdev_qos_info {struct netdev_tc_txq* tc_to_txq; scalar_t__ num_tc; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct netdev_qos_info qos_data; } ;


 int TC_BITMASK ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int ) ;
 int pr_warning (char*,...) ;

void netif_setup_tc(struct net_device *dev, unsigned int txq)
{
 int i;
 struct netdev_qos_info *qos = &netdev_extended(dev)->qos_data;
 struct netdev_tc_txq *tc = &qos->tc_to_txq[0];


 if (tc->offset + tc->count > txq) {
  pr_warning("Number of in use tx queues changed "
      "invalidating tc mappings. Priority "
      "traffic classification disabled!\n");
  qos->num_tc = 0;
  return;
 }


 for (i = 1; i < TC_BITMASK + 1; i++) {
  int q = netdev_get_prio_tc_map(dev, i);

  tc = &qos->tc_to_txq[q];
  if (tc->offset + tc->count > txq) {
   pr_warning("Number of in use tx queues "
       "changed. Priority %i to tc "
       "mapping %i is no longer valid "
       "setting map to 0\n",
       i, q);
   netdev_set_prio_tc_map(dev, i, 0);
  }
 }
}
