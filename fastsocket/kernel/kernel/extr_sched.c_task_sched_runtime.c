
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {unsigned long long sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {int dummy; } ;


 unsigned long long do_task_delta_exec (struct task_struct*,struct rq*) ;
 struct rq* task_rq_lock (struct task_struct*,unsigned long*) ;
 int task_rq_unlock (struct rq*,unsigned long*) ;

unsigned long long task_sched_runtime(struct task_struct *p)
{
 unsigned long flags;
 struct rq *rq;
 u64 ns = 0;

 rq = task_rq_lock(p, &flags);
 ns = p->se.sum_exec_runtime + do_task_delta_exec(p, rq);
 task_rq_unlock(rq, &flags);

 return ns;
}
