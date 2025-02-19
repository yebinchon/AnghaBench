
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {struct cbq_class** active; } ;
struct cbq_class {scalar_t__ penalized; struct cbq_class* next_alive; scalar_t__ delayed; int priority; int cpriority; } ;
typedef scalar_t__ psched_time_t ;
typedef scalar_t__ psched_tdiff_t ;


 int cbq_activate_class (struct cbq_class*) ;

__attribute__((used)) static psched_tdiff_t cbq_undelay_prio(struct cbq_sched_data *q, int prio,
           psched_time_t now)
{
 struct cbq_class *cl;
 struct cbq_class *cl_prev = q->active[prio];
 psched_time_t sched = now;

 if (cl_prev == ((void*)0))
  return 0;

 do {
  cl = cl_prev->next_alive;
  if (now - cl->penalized > 0) {
   cl_prev->next_alive = cl->next_alive;
   cl->next_alive = ((void*)0);
   cl->cpriority = cl->priority;
   cl->delayed = 0;
   cbq_activate_class(cl);

   if (cl == q->active[prio]) {
    q->active[prio] = cl_prev;
    if (cl == q->active[prio]) {
     q->active[prio] = ((void*)0);
     return 0;
    }
   }

   cl = cl_prev->next_alive;
  } else if (sched - cl->penalized > 0)
   sched = cl->penalized;
 } while ((cl_prev = cl) != q->active[prio]);

 return sched - now;
}
