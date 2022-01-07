
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TICK_DO_TIMER_NONE ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int nr_cpu_ids ;
 int tick_do_timer_cpu ;

__attribute__((used)) static void tick_handover_do_timer(int *cpup)
{
 if (*cpup == tick_do_timer_cpu) {
  int cpu = cpumask_first(cpu_online_mask);

  tick_do_timer_cpu = (cpu < nr_cpu_ids) ? cpu :
   TICK_DO_TIMER_NONE;
 }
}
