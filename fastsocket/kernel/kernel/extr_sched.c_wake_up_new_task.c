
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sched_class; int state; } ;
struct rq {int dummy; } ;
struct TYPE_2__ {int (* task_woken ) (struct rq*,struct task_struct*) ;} ;


 int SD_BALANCE_FORK ;
 int TASK_RUNNING ;
 int TASK_WAKING ;
 int WF_FORK ;
 int activate_task (struct rq*,struct task_struct*,int ) ;
 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int get_cpu () ;
 int put_cpu () ;
 int select_task_rq (struct rq*,struct task_struct*,int ,int ) ;
 int set_task_cpu (struct task_struct*,int) ;
 int stub1 (struct rq*,struct task_struct*) ;
 struct rq* task_rq_lock (struct task_struct*,unsigned long*) ;
 int task_rq_unlock (struct rq*,unsigned long*) ;
 int trace_sched_wakeup_new (struct rq*,struct task_struct*,int) ;

void wake_up_new_task(struct task_struct *p, unsigned long clone_flags)
{
 unsigned long flags;
 struct rq *rq;
 int cpu = get_cpu();
 rq = task_rq_lock(p, &flags);
 activate_task(rq, p, 0);
 trace_sched_wakeup_new(rq, p, 1);
 check_preempt_curr(rq, p, WF_FORK);




 task_rq_unlock(rq, &flags);
 put_cpu();
}
