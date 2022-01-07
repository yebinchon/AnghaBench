
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cpu_time_count {int dummy; } cpu_time_count ;
struct timespec {int dummy; } ;
struct task_struct {scalar_t__ signal; } ;
typedef scalar_t__ pid_t ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_PERTHREAD (int const) ;
 scalar_t__ CPUCLOCK_PID (int const) ;
 int EINVAL ;
 int cpu_clock_sample (int const,struct task_struct*,union cpu_time_count*) ;
 int cpu_clock_sample_group (int const,struct task_struct*,union cpu_time_count*) ;
 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (scalar_t__ const) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ same_thread_group (struct task_struct*,struct task_struct*) ;
 int sample_to_timespec (int const,union cpu_time_count,struct timespec*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_leader (struct task_struct*) ;

__attribute__((used)) static int posix_cpu_clock_get(const clockid_t which_clock, struct timespec *tp)
{
 const pid_t pid = CPUCLOCK_PID(which_clock);
 int error = -EINVAL;
 union cpu_time_count rtn;

 if (pid == 0) {




  if (CPUCLOCK_PERTHREAD(which_clock)) {



   error = cpu_clock_sample(which_clock,
       current, &rtn);
  } else {
   read_lock(&tasklist_lock);
   error = cpu_clock_sample_group(which_clock,
             current, &rtn);
   read_unlock(&tasklist_lock);
  }
 } else {




  struct task_struct *p;
  rcu_read_lock();
  p = find_task_by_vpid(pid);
  if (p) {
   if (CPUCLOCK_PERTHREAD(which_clock)) {
    if (same_thread_group(p, current)) {
     error = cpu_clock_sample(which_clock,
         p, &rtn);
    }
   } else {
    read_lock(&tasklist_lock);
    if (thread_group_leader(p) && p->signal) {
     error =
         cpu_clock_sample_group(which_clock,
                  p, &rtn);
    }
    read_unlock(&tasklist_lock);
   }
  }
  rcu_read_unlock();
 }

 if (error)
  return error;
 sample_to_timespec(which_clock, rtn, tp);
 return 0;
}
