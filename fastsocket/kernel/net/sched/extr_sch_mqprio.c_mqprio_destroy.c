
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; } ;
struct mqprio_sched {scalar_t__* qdiscs; } ;
struct Qdisc {int dummy; } ;


 int kfree (scalar_t__*) ;
 int netdev_set_num_tc (struct net_device*,int ) ;
 int qdisc_destroy (scalar_t__) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mqprio_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void mqprio_destroy(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mqprio_sched *priv = qdisc_priv(sch);
 unsigned int ntx;

 if (priv->qdiscs) {
  for (ntx = 0;
       ntx < dev->num_tx_queues && priv->qdiscs[ntx];
       ntx++)
   qdisc_destroy(priv->qdiscs[ntx]);
  kfree(priv->qdiscs);
 }

 netdev_set_num_tc(dev, 0);
}
