
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_bits ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int to_cpumask (int ) ;

void set_cpu_online(unsigned int cpu, bool online)
{
 if (online)
  cpumask_set_cpu(cpu, to_cpumask(cpu_online_bits));
 else
  cpumask_clear_cpu(cpu, to_cpumask(cpu_online_bits));
}
