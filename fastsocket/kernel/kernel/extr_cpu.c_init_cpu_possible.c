
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpu_possible_bits ;
 int cpumask_copy (int ,struct cpumask const*) ;
 int to_cpumask (int ) ;

void init_cpu_possible(const struct cpumask *src)
{
 cpumask_copy(to_cpumask(cpu_possible_bits), src);
}
