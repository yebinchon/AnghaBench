
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Qdisc {scalar_t__ parent; int flags; int list; } ;
struct TYPE_4__ {TYPE_1__* qdisc; } ;
struct TYPE_3__ {int list; } ;


 int TCQ_F_INGRESS ;
 scalar_t__ TC_H_ROOT ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static void qdisc_list_add(struct Qdisc *q)
{
 if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS))
  list_add_tail(&q->list, &qdisc_dev(q)->qdisc->list);
}
