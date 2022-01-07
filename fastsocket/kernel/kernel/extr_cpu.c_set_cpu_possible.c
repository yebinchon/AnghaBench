
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_possible_bits ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int to_cpumask (int ) ;

void set_cpu_possible(unsigned int cpu, bool possible)
{
 if (possible)
  cpumask_set_cpu(cpu, to_cpumask(cpu_possible_bits));
 else
  cpumask_clear_cpu(cpu, to_cpumask(cpu_possible_bits));
}
