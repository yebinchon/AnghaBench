
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct task_struct {int dummy; } ;
struct task_cputime {unsigned long long sum_exec_runtime; } ;
struct rq {int dummy; } ;


 unsigned long long do_task_delta_exec (struct task_struct*,struct rq*) ;
 struct rq* task_rq_lock (struct task_struct*,unsigned long*) ;
 int task_rq_unlock (struct rq*,unsigned long*) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;

unsigned long long thread_group_sched_runtime(struct task_struct *p)
{
 struct task_cputime totals;
 unsigned long flags;
 struct rq *rq;
 u64 ns;

 rq = task_rq_lock(p, &flags);
 thread_group_cputime(p, &totals);
 ns = totals.sum_exec_runtime + do_task_delta_exec(p, rq);
 task_rq_unlock(rq, &flags);

 return ns;
}
