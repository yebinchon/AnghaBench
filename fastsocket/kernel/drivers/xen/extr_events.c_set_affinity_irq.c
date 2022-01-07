
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 unsigned int cpumask_first (struct cpumask const*) ;
 int rebind_irq_to_cpu (unsigned int,unsigned int) ;

__attribute__((used)) static int set_affinity_irq(unsigned irq, const struct cpumask *dest)
{
 unsigned tcpu = cpumask_first(dest);

 return rebind_irq_to_cpu(irq, tcpu);
}
