
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef scalar_t__ pid_t ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_MAX ;
 scalar_t__ CPUCLOCK_PERTHREAD (int const) ;
 scalar_t__ CPUCLOCK_PID (int const) ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int EINVAL ;
 int current ;
 struct task_struct* find_task_by_vpid (scalar_t__ const) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int same_thread_group (struct task_struct*,int ) ;
 int tasklist_lock ;
 int thread_group_leader (struct task_struct*) ;

__attribute__((used)) static int check_clock(const clockid_t which_clock)
{
 int error = 0;
 struct task_struct *p;
 const pid_t pid = CPUCLOCK_PID(which_clock);

 if (CPUCLOCK_WHICH(which_clock) >= CPUCLOCK_MAX)
  return -EINVAL;

 if (pid == 0)
  return 0;

 read_lock(&tasklist_lock);
 p = find_task_by_vpid(pid);
 if (!p || !(CPUCLOCK_PERTHREAD(which_clock) ?
     same_thread_group(p, current) : thread_group_leader(p))) {
  error = -EINVAL;
 }
 read_unlock(&tasklist_lock);

 return error;
}
