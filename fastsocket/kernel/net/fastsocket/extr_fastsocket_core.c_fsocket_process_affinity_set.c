
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int cpumask_clear (struct cpumask*) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 TYPE_1__* current ;
 int sched_setaffinity (int ,struct cpumask*) ;

__attribute__((used)) static void fsocket_process_affinity_set(int cpu)
{
 struct cpumask mask;

 cpumask_clear(&mask);
 cpumask_set_cpu(cpu, &mask);
 sched_setaffinity(current->pid, &mask);
}
