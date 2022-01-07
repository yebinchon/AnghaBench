
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int cpu_clear (int,int ) ;
 int cpumask_clear (struct cpumask*) ;
 int cpus_setall (struct cpumask) ;
 TYPE_1__* current ;
 int fastsocket_spawn_cpu ;
 int fastsocket_spawn_cpuset ;
 int sched_setaffinity (int ,struct cpumask*) ;

__attribute__((used)) static void fsocket_process_affinity_restore(int cpu)
{
 struct cpumask mask;

 cpumask_clear(&mask);
 cpus_setall(mask);

 sched_setaffinity(current->pid, &mask);

 if (-1 != cpu) {
  cpu_clear(cpu, fastsocket_spawn_cpuset);
  fastsocket_spawn_cpu--;
 }
}
