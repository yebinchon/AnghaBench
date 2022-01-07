
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int pid_t ;
typedef int cpumask_var_t ;


 int CAP_SYS_NICE ;
 int ENOMEM ;
 int EPERM ;
 long ESRCH ;
 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 int capable (int ) ;
 int check_same_owner (struct task_struct*) ;
 int cpumask_and (int ,struct cpumask const*,int ) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_subset (int ,int ) ;
 int cpuset_cpus_allowed (struct task_struct*,int ) ;
 struct task_struct* find_process_by_pid (int ) ;
 int free_cpumask_var (int ) ;
 int get_online_cpus () ;
 int get_task_struct (struct task_struct*) ;
 int put_online_cpus () ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_setscheduler (struct task_struct*,int ,int *) ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;

long sched_setaffinity(pid_t pid, const struct cpumask *in_mask)
{
 cpumask_var_t cpus_allowed, new_mask;
 struct task_struct *p;
 int retval;

 get_online_cpus();
 rcu_read_lock();

 p = find_process_by_pid(pid);
 if (!p) {
  rcu_read_unlock();
  put_online_cpus();
  return -ESRCH;
 }


 get_task_struct(p);
 rcu_read_unlock();

 if (!alloc_cpumask_var(&cpus_allowed, GFP_KERNEL)) {
  retval = -ENOMEM;
  goto out_put_task;
 }
 if (!alloc_cpumask_var(&new_mask, GFP_KERNEL)) {
  retval = -ENOMEM;
  goto out_free_cpus_allowed;
 }
 retval = -EPERM;
 if (!check_same_owner(p) && !capable(CAP_SYS_NICE))
  goto out_unlock;

 retval = security_task_setscheduler(p, 0, ((void*)0));
 if (retval)
  goto out_unlock;

 cpuset_cpus_allowed(p, cpus_allowed);
 cpumask_and(new_mask, in_mask, cpus_allowed);
 again:
 retval = set_cpus_allowed_ptr(p, new_mask);

 if (!retval) {
  cpuset_cpus_allowed(p, cpus_allowed);
  if (!cpumask_subset(new_mask, cpus_allowed)) {





   cpumask_copy(new_mask, cpus_allowed);
   goto again;
  }
 }
out_unlock:
 free_cpumask_var(new_mask);
out_free_cpus_allowed:
 free_cpumask_var(cpus_allowed);
out_put_task:
 put_task_struct(p);
 put_online_cpus();
 return retval;
}
