
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_4__ {TYPE_1__ run_list; scalar_t__ time_slice; } ;
struct task_struct {scalar_t__ policy; TYPE_2__ rt; } ;
struct rq {int dummy; } ;


 scalar_t__ SCHED_RR ;
 int requeue_task_rt (struct rq*,struct task_struct*,int ) ;
 scalar_t__ sched_rr_timeslice ;
 int set_tsk_need_resched (struct task_struct*) ;
 int update_curr_rt (struct rq*) ;
 int watchdog (struct rq*,struct task_struct*) ;

__attribute__((used)) static void task_tick_rt(struct rq *rq, struct task_struct *p, int queued)
{
 update_curr_rt(rq);

 watchdog(rq, p);





 if (p->policy != SCHED_RR)
  return;

 if (--p->rt.time_slice)
  return;

 p->rt.time_slice = sched_rr_timeslice;





 if (p->rt.run_list.prev != p->rt.run_list.next) {
  requeue_task_rt(rq, p, 0);
  set_tsk_need_resched(p);
 }
}
