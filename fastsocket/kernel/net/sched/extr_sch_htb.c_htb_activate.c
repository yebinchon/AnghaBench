
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct htb_sched {scalar_t__ drops; } ;
struct TYPE_5__ {int drop_list; TYPE_3__* q; } ;
struct TYPE_6__ {TYPE_1__ leaf; } ;
struct htb_class {int prio_activity; int prio; TYPE_2__ un; scalar_t__ level; } ;
struct TYPE_8__ {int qlen; } ;
struct TYPE_7__ {TYPE_4__ q; } ;


 int WARN_ON (int) ;
 int htb_activate_prios (struct htb_sched*,struct htb_class*) ;
 int list_add_tail (int *,scalar_t__) ;

__attribute__((used)) static inline void htb_activate(struct htb_sched *q, struct htb_class *cl)
{
 WARN_ON(cl->level || !cl->un.leaf.q || !cl->un.leaf.q->q.qlen);

 if (!cl->prio_activity) {
  cl->prio_activity = 1 << cl->prio;
  htb_activate_prios(q, cl);
  list_add_tail(&cl->un.leaf.drop_list,
         q->drops + cl->prio);
 }
}
