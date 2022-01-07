
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int * prio_tc_map; int * offset; int * count; } ;
struct nlattr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct mqprio_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {scalar_t__ parent; int flags; int handle; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int TCQ_F_CAN_BYPASS ;
 int TCQ_F_MQROOT ;
 int TC_BITMASK ;
 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int ) ;
 int TC_H_MIN (int) ;
 scalar_t__ TC_H_ROOT ;
 scalar_t__ TC_MAX_QUEUE ;
 int TC_QOPT_BITMASK ;
 scalar_t__ TC_QOPT_MAX_QUEUE ;
 struct Qdisc** kcalloc (int,int,int ) ;
 int mqprio_destroy (struct Qdisc*) ;
 scalar_t__ mqprio_parse_opt (struct net_device*,struct tc_mqprio_qopt*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int ) ;
 int netdev_set_tc_queue (struct net_device*,int,int ,int ) ;
 int netif_is_multiqueue (struct net_device*) ;
 struct tc_mqprio_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int pfifo_fast_ops ;
 struct Qdisc* qdisc_create_dflt (struct net_device*,struct netdev_queue*,int *,int ) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mqprio_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int mqprio_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mqprio_sched *priv = qdisc_priv(sch);
 struct netdev_queue *dev_queue;
 struct Qdisc *qdisc;
 int i, err = -EOPNOTSUPP;
 struct tc_mqprio_qopt *qopt = ((void*)0);

 BUILD_BUG_ON(TC_MAX_QUEUE != TC_QOPT_MAX_QUEUE);
 BUILD_BUG_ON(TC_BITMASK != TC_QOPT_BITMASK);

 if (sch->parent != TC_H_ROOT)
  return -EOPNOTSUPP;

 if (!netif_is_multiqueue(dev))
  return -EOPNOTSUPP;

 if (!opt || nla_len(opt) < sizeof(*qopt))
  return -EINVAL;

 qopt = nla_data(opt);
 if (mqprio_parse_opt(dev, qopt))
  return -EINVAL;


 priv->qdiscs = kcalloc(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
          GFP_KERNEL);
 if (priv->qdiscs == ((void*)0)) {
  err = -ENOMEM;
  goto err;
 }

 for (i = 0; i < dev->num_tx_queues; i++) {
  dev_queue = netdev_get_tx_queue(dev, i);
  qdisc = qdisc_create_dflt(dev, dev_queue, &pfifo_fast_ops,
       TC_H_MAKE(TC_H_MAJ(sch->handle),
          TC_H_MIN(i + 1)));
  if (qdisc == ((void*)0)) {
   err = -ENOMEM;
   goto err;
  }
  qdisc->flags |= TCQ_F_CAN_BYPASS;
  priv->qdiscs[i] = qdisc;
 }

 netdev_set_num_tc(dev, qopt->num_tc);
 for (i = 0; i < qopt->num_tc; i++)
  netdev_set_tc_queue(dev, i,
        qopt->count[i], qopt->offset[i]);


 for (i = 0; i < TC_BITMASK + 1; i++)
  netdev_set_prio_tc_map(dev, i, qopt->prio_tc_map[i]);

 sch->flags |= TCQ_F_MQROOT;
 return 0;

err:
 mqprio_destroy(sch);
 return err;
}
