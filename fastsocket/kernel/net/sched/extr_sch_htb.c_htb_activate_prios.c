
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htb_sched {int dummy; } ;
struct TYPE_4__ {TYPE_3__* feed; } ;
struct TYPE_5__ {TYPE_1__ inner; } ;
struct htb_class {long prio_activity; scalar_t__ cmode; struct htb_class* parent; TYPE_2__ un; } ;
struct TYPE_6__ {scalar_t__ rb_node; } ;


 scalar_t__ HTB_CAN_SEND ;
 scalar_t__ HTB_MAY_BORROW ;
 int ffz (long) ;
 int htb_add_class_to_row (struct htb_sched*,struct htb_class*,long) ;
 int htb_add_to_id_tree (TYPE_3__*,struct htb_class*,int) ;

__attribute__((used)) static void htb_activate_prios(struct htb_sched *q, struct htb_class *cl)
{
 struct htb_class *p = cl->parent;
 long m, mask = cl->prio_activity;

 while (cl->cmode == HTB_MAY_BORROW && p && mask) {
  m = mask;
  while (m) {
   int prio = ffz(~m);
   m &= ~(1 << prio);

   if (p->un.inner.feed[prio].rb_node)


    mask &= ~(1 << prio);

   htb_add_to_id_tree(p->un.inner.feed + prio, cl, prio);
  }
  p->prio_activity |= mask;
  cl = p;
  p = cl->parent;

 }
 if (cl->cmode == HTB_CAN_SEND && mask)
  htb_add_class_to_row(q, cl, mask);
}
