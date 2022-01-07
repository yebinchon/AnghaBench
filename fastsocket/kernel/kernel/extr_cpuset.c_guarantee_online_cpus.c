
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {struct cpumask* cpus_allowed; struct cpuset* parent; } ;
struct cpumask {int dummy; } ;


 int BUG_ON (int) ;
 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,struct cpumask*,int ) ;
 int cpumask_copy (struct cpumask*,int ) ;
 int cpumask_intersects (struct cpumask*,int ) ;

__attribute__((used)) static void guarantee_online_cpus(const struct cpuset *cs,
      struct cpumask *pmask)
{
 while (cs && !cpumask_intersects(cs->cpus_allowed, cpu_online_mask))
  cs = cs->parent;
 if (cs)
  cpumask_and(pmask, cs->cpus_allowed, cpu_online_mask);
 else
  cpumask_copy(pmask, cpu_online_mask);
 BUG_ON(!cpumask_intersects(pmask, cpu_online_mask));
}
