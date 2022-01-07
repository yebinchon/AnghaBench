
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {int dev_queue; } ;


 struct Qdisc* dev_graft_qdisc (int ,struct Qdisc*) ;
 int kfree (struct Qdisc**) ;
 int qdisc_destroy (struct Qdisc*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mq_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void mq_attach(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mq_sched *priv = qdisc_priv(sch);
 struct Qdisc *qdisc;
 unsigned int ntx;

 for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
  qdisc = priv->qdiscs[ntx];
  qdisc = dev_graft_qdisc(qdisc->dev_queue, qdisc);
  if (qdisc)
   qdisc_destroy(qdisc);
 }
 kfree(priv->qdiscs);
 priv->qdiscs = ((void*)0);
}
