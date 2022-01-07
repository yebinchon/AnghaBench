
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tc_mqprio_qopt {unsigned int num_tc; int * offset; int * count; int prio_tc_map; int member_0; } ;
struct sk_buff {int len; } ;
struct netdev_qos_info {TYPE_2__* tc_to_txq; int prio_tc_map; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_10__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_5__ qstats; TYPE_5__ bstats; TYPE_1__ q; } ;
typedef int opt ;
struct TYPE_9__ {struct netdev_qos_info qos_data; } ;
struct TYPE_8__ {struct Qdisc* qdisc; } ;
struct TYPE_7__ {int offset; int count; } ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_mqprio_qopt*) ;
 int TCA_OPTIONS ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 TYPE_4__* netdev_extended (struct net_device*) ;
 unsigned int netdev_get_num_tc (struct net_device*) ;
 TYPE_3__* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_lock (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static int mqprio_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct net_device *dev = qdisc_dev(sch);
 struct netdev_qos_info *qos = &netdev_extended(dev)->qos_data;
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_mqprio_qopt opt = { 0 };
 struct Qdisc *qdisc;
 unsigned int i;

 sch->q.qlen = 0;
 memset(&sch->bstats, 0, sizeof(sch->bstats));
 memset(&sch->qstats, 0, sizeof(sch->qstats));

 for (i = 0; i < dev->num_tx_queues; i++) {
  qdisc = netdev_get_tx_queue(dev, i)->qdisc;
  spin_lock_bh(qdisc_lock(qdisc));
  sch->q.qlen += qdisc->q.qlen;
  sch->bstats.bytes += qdisc->bstats.bytes;
  sch->bstats.packets += qdisc->bstats.packets;
  sch->qstats.qlen += qdisc->qstats.qlen;
  sch->qstats.backlog += qdisc->qstats.backlog;
  sch->qstats.drops += qdisc->qstats.drops;
  sch->qstats.requeues += qdisc->qstats.requeues;
  sch->qstats.overlimits += qdisc->qstats.overlimits;
  spin_unlock_bh(qdisc_lock(qdisc));
 }

 opt.num_tc = netdev_get_num_tc(dev);
 memcpy(opt.prio_tc_map, qos->prio_tc_map, sizeof(opt.prio_tc_map));

 for (i = 0; i < netdev_get_num_tc(dev); i++) {
  opt.count[i] = qos->tc_to_txq[i].count;
  opt.offset[i] = qos->tc_to_txq[i].offset;
 }

 NLA_PUT(skb, TCA_OPTIONS, sizeof(opt), &opt);

 return skb->len;
nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
