
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fifo_sched_data {scalar_t__ limit; } ;
struct Qdisc {int q; } ;


 scalar_t__ likely (int) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 struct fifo_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reshape_fail (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static int pfifo_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct fifo_sched_data *q = qdisc_priv(sch);

 if (likely(skb_queue_len(&sch->q) < q->limit))
  return qdisc_enqueue_tail(skb, sch);

 return qdisc_reshape_fail(skb, sch);
}
