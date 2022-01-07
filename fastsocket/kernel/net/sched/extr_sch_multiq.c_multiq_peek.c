
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct multiq_sched_data {unsigned int curband; int bands; struct Qdisc** queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 int __netif_subqueue_stopped (int ,unsigned int) ;
 int qdisc_dev (struct Qdisc*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *multiq_peek(struct Qdisc *sch)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned int curband = q->curband;
 struct Qdisc *qdisc;
 struct sk_buff *skb;
 int band;

 for (band = 0; band < q->bands; band++) {

  curband++;
  if (curband >= q->bands)
   curband = 0;




  if (!__netif_subqueue_stopped(qdisc_dev(sch), curband)) {
   qdisc = q->queues[curband];
   skb = qdisc->ops->peek(qdisc);
   if (skb)
    return skb;
  }
 }
 return ((void*)0);

}
