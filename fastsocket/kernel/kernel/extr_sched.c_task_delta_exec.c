
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 unsigned long long do_task_delta_exec (struct task_struct*,struct rq*) ;
 struct rq* task_rq_lock (struct task_struct*,unsigned long*) ;
 int task_rq_unlock (struct rq*,unsigned long*) ;

unsigned long long task_delta_exec(struct task_struct *p)
{
 unsigned long flags;
 struct rq *rq;
 u64 ns = 0;

 rq = task_rq_lock(p, &flags);
 ns = do_task_delta_exec(p, rq);
 task_rq_unlock(rq, &flags);

 return ns;
}
