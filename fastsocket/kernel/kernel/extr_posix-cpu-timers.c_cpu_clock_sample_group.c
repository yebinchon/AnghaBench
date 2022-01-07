
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {int sched; int cpu; } ;
struct task_struct {int dummy; } ;
struct task_cputime {int utime; int stime; } ;
typedef int clockid_t ;





 int CPUCLOCK_WHICH (int const) ;
 int EINVAL ;
 int cputime_add (int ,int ) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;
 int thread_group_sched_runtime (struct task_struct*) ;

__attribute__((used)) static int cpu_clock_sample_group(const clockid_t which_clock,
      struct task_struct *p,
      union cpu_time_count *cpu)
{
 struct task_cputime cputime;

 switch (CPUCLOCK_WHICH(which_clock)) {
 default:
  return -EINVAL;
 case 130:
  thread_group_cputime(p, &cputime);
  cpu->cpu = cputime_add(cputime.utime, cputime.stime);
  break;
 case 128:
  thread_group_cputime(p, &cputime);
  cpu->cpu = cputime.utime;
  break;
 case 129:
  cpu->sched = thread_group_sched_runtime(p);
  break;
 }
 return 0;
}
