
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Qdisc_ops {int (* reset ) (struct Qdisc*) ;} ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; int * gso_skb; struct Qdisc_ops* ops; } ;


 int kfree_skb (int *) ;
 int stub1 (struct Qdisc*) ;

void qdisc_reset(struct Qdisc *qdisc)
{
 const struct Qdisc_ops *ops = qdisc->ops;

 if (ops->reset)
  ops->reset(qdisc);

 if (qdisc->gso_skb) {
  kfree_skb(qdisc->gso_skb);
  qdisc->gso_skb = ((void*)0);
  qdisc->q.qlen = 0;
 }
}
