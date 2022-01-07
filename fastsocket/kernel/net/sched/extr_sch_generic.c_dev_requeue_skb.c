
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_3__ {int requeues; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; struct sk_buff* gso_skb; } ;


 int __netif_schedule (struct Qdisc*) ;

__attribute__((used)) static inline int dev_requeue_skb(struct sk_buff *skb, struct Qdisc *q)
{
 q->gso_skb = skb;
 q->qstats.requeues++;
 q->q.qlen++;
 __netif_schedule(q);

 return 0;
}
