
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_6__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_3__ bstats; TYPE_1__ q; } ;
struct TYPE_5__ {struct Qdisc* qdisc_sleeping; } ;


 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_lock (struct Qdisc*) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static int mq_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct net_device *dev = qdisc_dev(sch);
 struct Qdisc *qdisc;
 unsigned int ntx;

 sch->q.qlen = 0;
 memset(&sch->bstats, 0, sizeof(sch->bstats));
 memset(&sch->qstats, 0, sizeof(sch->qstats));

 for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
  qdisc = netdev_get_tx_queue(dev, ntx)->qdisc_sleeping;
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
 return 0;
}
