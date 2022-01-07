
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {int activemask; struct cbq_class** active; } ;
struct cbq_class {int cpriority; struct cbq_class* next_alive; int qdisc; } ;


 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_deactivate_class(struct cbq_class *this)
{
 struct cbq_sched_data *q = qdisc_priv(this->qdisc);
 int prio = this->cpriority;
 struct cbq_class *cl;
 struct cbq_class *cl_prev = q->active[prio];

 do {
  cl = cl_prev->next_alive;
  if (cl == this) {
   cl_prev->next_alive = cl->next_alive;
   cl->next_alive = ((void*)0);

   if (cl == q->active[prio]) {
    q->active[prio] = cl_prev;
    if (cl == q->active[prio]) {
     q->active[prio] = ((void*)0);
     q->activemask &= ~(1<<prio);
     return;
    }
   }
   return;
  }
 } while ((cl_prev = cl) != q->active[prio]);
}
