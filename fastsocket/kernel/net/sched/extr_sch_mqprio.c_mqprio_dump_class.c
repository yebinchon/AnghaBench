
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcmsg {int tcm_handle; scalar_t__ tcm_info; int tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct netdev_tc_txq {int offset; int count; } ;
struct netdev_queue {TYPE_1__* qdisc_sleeping; } ;
struct netdev_qos_info {struct netdev_tc_txq* tc_to_txq; } ;
struct net_device {int dummy; } ;
struct Qdisc {int handle; } ;
struct TYPE_4__ {struct netdev_qos_info qos_data; } ;
struct TYPE_3__ {scalar_t__ handle; } ;


 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int ) ;
 int TC_H_MIN (unsigned long) ;
 int TC_H_ROOT ;
 struct netdev_queue* mqprio_queue_get (struct Qdisc*,unsigned long) ;
 TYPE_2__* netdev_extended (struct net_device*) ;
 unsigned long netdev_get_num_tc (struct net_device*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int mqprio_dump_class(struct Qdisc *sch, unsigned long cl,
    struct sk_buff *skb, struct tcmsg *tcm)
{
 struct net_device *dev = qdisc_dev(sch);
 struct netdev_qos_info *qos = &netdev_extended(dev)->qos_data;

 if (cl <= netdev_get_num_tc(dev)) {
  tcm->tcm_parent = TC_H_ROOT;
  tcm->tcm_info = 0;
 } else {
  int i;
  struct netdev_queue *dev_queue;

  dev_queue = mqprio_queue_get(sch, cl);
  tcm->tcm_parent = 0;
  for (i = 0; i < netdev_get_num_tc(dev); i++) {
   struct netdev_tc_txq tc = qos->tc_to_txq[i];
   int q_idx = cl - netdev_get_num_tc(dev);

   if (q_idx > tc.offset &&
       q_idx <= tc.offset + tc.count) {
    tcm->tcm_parent =
     TC_H_MAKE(TC_H_MAJ(sch->handle),
        TC_H_MIN(i + 1));
    break;
   }
  }
  tcm->tcm_info = dev_queue->qdisc_sleeping->handle;
 }
 tcm->tcm_handle |= TC_H_MIN(cl);
 return 0;
}
