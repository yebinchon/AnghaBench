
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {int sched; int cpu; } ;
struct task_struct {int dummy; } ;
typedef int clockid_t ;





 int CPUCLOCK_WHICH (int const) ;
 int EINVAL ;
 int prof_ticks (struct task_struct*) ;
 int task_sched_runtime (struct task_struct*) ;
 int virt_ticks (struct task_struct*) ;

__attribute__((used)) static int cpu_clock_sample(const clockid_t which_clock, struct task_struct *p,
       union cpu_time_count *cpu)
{
 switch (CPUCLOCK_WHICH(which_clock)) {
 default:
  return -EINVAL;
 case 130:
  cpu->cpu = prof_ticks(p);
  break;
 case 128:
  cpu->cpu = virt_ticks(p);
  break;
 case 129:
  cpu->sched = task_sched_runtime(p);
  break;
 }
 return 0;
}
