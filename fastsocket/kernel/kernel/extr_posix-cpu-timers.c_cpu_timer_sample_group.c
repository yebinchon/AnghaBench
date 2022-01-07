
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {scalar_t__ sched; int cpu; } ;
struct task_struct {int dummy; } ;
struct task_cputime {scalar_t__ sum_exec_runtime; int utime; int stime; } ;
typedef int clockid_t ;





 int CPUCLOCK_WHICH (int const) ;
 int EINVAL ;
 int cputime_add (int ,int ) ;
 scalar_t__ task_delta_exec (struct task_struct*) ;
 int thread_group_cputimer (struct task_struct*,struct task_cputime*) ;

__attribute__((used)) static int cpu_timer_sample_group(const clockid_t which_clock,
      struct task_struct *p,
      union cpu_time_count *cpu)
{
 struct task_cputime cputime;

 thread_group_cputimer(p, &cputime);
 switch (CPUCLOCK_WHICH(which_clock)) {
 default:
  return -EINVAL;
 case 130:
  cpu->cpu = cputime_add(cputime.utime, cputime.stime);
  break;
 case 128:
  cpu->cpu = cputime.utime;
  break;
 case 129:
  cpu->sched = cputime.sum_exec_runtime + task_delta_exec(p);
  break;
 }
 return 0;
}
