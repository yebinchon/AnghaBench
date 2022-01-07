
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {scalar_t__* qdiscs; } ;
struct Qdisc {int dummy; } ;


 int kfree (scalar_t__*) ;
 int qdisc_destroy (scalar_t__) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mq_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void mq_destroy(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mq_sched *priv = qdisc_priv(sch);
 unsigned int ntx;

 if (!priv->qdiscs)
  return;
 for (ntx = 0; ntx < dev->num_tx_queues && priv->qdiscs[ntx]; ntx++)
  qdisc_destroy(priv->qdiscs[ntx]);
 kfree(priv->qdiscs);
}
