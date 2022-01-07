
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int relax_domain_level; int cpus_allowed; } ;
typedef int s64 ;


 int EINVAL ;
 int SD_LV_MAX ;
 int async_rebuild_sched_domains () ;
 int cpumask_empty (int ) ;
 scalar_t__ is_sched_load_balance (struct cpuset*) ;

__attribute__((used)) static int update_relax_domain_level(struct cpuset *cs, s64 val)
{





 if (val != cs->relax_domain_level) {
  cs->relax_domain_level = val;
  if (!cpumask_empty(cs->cpus_allowed) &&
      is_sched_load_balance(cs))
   async_rebuild_sched_domains();
 }

 return 0;
}
