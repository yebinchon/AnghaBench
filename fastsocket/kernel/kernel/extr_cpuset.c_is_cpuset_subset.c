
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int mems_allowed; int cpus_allowed; } ;


 scalar_t__ cpumask_subset (int ,int ) ;
 scalar_t__ is_cpu_exclusive (struct cpuset const*) ;
 scalar_t__ is_mem_exclusive (struct cpuset const*) ;
 scalar_t__ nodes_subset (int ,int ) ;

__attribute__((used)) static int is_cpuset_subset(const struct cpuset *p, const struct cpuset *q)
{
 return cpumask_subset(p->cpus_allowed, q->cpus_allowed) &&
  nodes_subset(p->mems_allowed, q->mems_allowed) &&
  is_cpu_exclusive(p) <= is_cpu_exclusive(q) &&
  is_mem_exclusive(p) <= is_mem_exclusive(q);
}
