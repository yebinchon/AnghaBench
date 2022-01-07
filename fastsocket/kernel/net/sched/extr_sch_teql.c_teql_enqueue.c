
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qlen; } ;
struct teql_sched_data {TYPE_3__ q; } ;
struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ tx_queue_len; } ;
struct TYPE_4__ {int drops; } ;
struct TYPE_5__ {int packets; int bytes; } ;
struct Qdisc {TYPE_1__ qstats; TYPE_2__ bstats; } ;


 int NET_XMIT_DROP ;
 int __skb_queue_tail (TYPE_3__*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct teql_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int
teql_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct teql_sched_data *q = qdisc_priv(sch);

 if (q->q.qlen < dev->tx_queue_len) {
  __skb_queue_tail(&q->q, skb);
  sch->bstats.bytes += qdisc_pkt_len(skb);
  sch->bstats.packets++;
  return 0;
 }

 kfree_skb(skb);
 sch->qstats.drops++;
 return NET_XMIT_DROP;
}
