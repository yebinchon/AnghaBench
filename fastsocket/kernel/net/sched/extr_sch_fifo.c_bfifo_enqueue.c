
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fifo_sched_data {scalar_t__ limit; } ;
struct TYPE_2__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;


 scalar_t__ likely (int) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct fifo_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reshape_fail (struct sk_buff*,struct Qdisc*) ;

__attribute__((used)) static int bfifo_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct fifo_sched_data *q = qdisc_priv(sch);

 if (likely(sch->qstats.backlog + qdisc_pkt_len(skb) <= q->limit))
  return qdisc_enqueue_tail(skb, sch);

 return qdisc_reshape_fail(skb, sch);
}
