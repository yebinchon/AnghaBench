
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cbq_sched_data {struct cbq_class** active; } ;
struct cbq_class {TYPE_4__* q; struct cbq_class* next_alive; } ;
struct TYPE_6__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_7__ {int qlen; } ;
struct TYPE_8__ {TYPE_3__ q; TYPE_1__* ops; } ;
struct TYPE_5__ {unsigned int (* drop ) (TYPE_4__*) ;} ;


 int TC_CBQ_MAXPRIO ;
 int cbq_deactivate_class (struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned int stub1 (TYPE_4__*) ;

__attribute__((used)) static unsigned int cbq_drop(struct Qdisc* sch)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl, *cl_head;
 int prio;
 unsigned int len;

 for (prio = TC_CBQ_MAXPRIO; prio >= 0; prio--) {
  if ((cl_head = q->active[prio]) == ((void*)0))
   continue;

  cl = cl_head;
  do {
   if (cl->q->ops->drop && (len = cl->q->ops->drop(cl->q))) {
    sch->q.qlen--;
    if (!cl->q->q.qlen)
     cbq_deactivate_class(cl);
    return len;
   }
  } while ((cl = cl->next_alive) != cl_head);
 }
 return 0;
}
