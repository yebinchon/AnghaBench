
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int tcm_parent; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;


 unsigned int TC_H_MIN (int ) ;
 struct netdev_queue* mq_queue_get (struct Qdisc*,unsigned int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static struct netdev_queue *mq_select_queue(struct Qdisc *sch,
         struct tcmsg *tcm)
{
 unsigned int ntx = TC_H_MIN(tcm->tcm_parent);
 struct netdev_queue *dev_queue = mq_queue_get(sch, ntx);

 if (!dev_queue) {
  struct net_device *dev = qdisc_dev(sch);

  return netdev_get_tx_queue(dev, 0);
 }
 return dev_queue;
}
