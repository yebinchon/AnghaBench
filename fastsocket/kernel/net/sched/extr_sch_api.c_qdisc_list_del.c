
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {scalar_t__ parent; int flags; int list; } ;


 int TCQ_F_INGRESS ;
 scalar_t__ TC_H_ROOT ;
 int list_del (int *) ;

void qdisc_list_del(struct Qdisc *q)
{
 if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS))
  list_del(&q->list);
}
