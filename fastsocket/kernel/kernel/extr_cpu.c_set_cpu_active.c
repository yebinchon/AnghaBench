
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_active_bits ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int to_cpumask (int ) ;

void set_cpu_active(unsigned int cpu, bool active)
{
 if (active)
  cpumask_set_cpu(cpu, to_cpumask(cpu_active_bits));
 else
  cpumask_clear_cpu(cpu, to_cpumask(cpu_active_bits));
}
