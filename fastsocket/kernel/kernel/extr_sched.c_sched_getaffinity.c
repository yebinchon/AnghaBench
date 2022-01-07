
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cpus_allowed; } ;
struct rq {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int pid_t ;


 int ESRCH ;
 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,int *,int ) ;
 struct task_struct* find_process_by_pid (int ) ;
 int get_online_cpus () ;
 int put_online_cpus () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_getscheduler (struct task_struct*) ;
 struct rq* task_rq_lock (struct task_struct*,unsigned long*) ;
 int task_rq_unlock (struct rq*,unsigned long*) ;

long sched_getaffinity(pid_t pid, struct cpumask *mask)
{
 struct task_struct *p;
 unsigned long flags;
 struct rq *rq;
 int retval;

 get_online_cpus();
 rcu_read_lock();

 retval = -ESRCH;
 p = find_process_by_pid(pid);
 if (!p)
  goto out_unlock;

 retval = security_task_getscheduler(p);
 if (retval)
  goto out_unlock;

 rq = task_rq_lock(p, &flags);
 cpumask_and(mask, &p->cpus_allowed, cpu_online_mask);
 task_rq_unlock(rq, &flags);

out_unlock:
 rcu_read_unlock();
 put_online_cpus();

 return retval;
}
