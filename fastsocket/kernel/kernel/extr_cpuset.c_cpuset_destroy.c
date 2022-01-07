
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cpus_allowed; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int CS_SCHED_LOAD_BALANCE ;
 struct cpuset* cgroup_cs (struct cgroup*) ;
 int free_cpumask_var (int ) ;
 scalar_t__ is_sched_load_balance (struct cpuset*) ;
 int kfree (struct cpuset*) ;
 int number_of_cpusets ;
 int update_flag (int ,struct cpuset*,int ) ;

__attribute__((used)) static void cpuset_destroy(struct cgroup_subsys *ss, struct cgroup *cont)
{
 struct cpuset *cs = cgroup_cs(cont);

 if (is_sched_load_balance(cs))
  update_flag(CS_SCHED_LOAD_BALANCE, cs, 0);

 number_of_cpusets--;
 free_cpumask_var(cs->cpus_allowed);
 kfree(cs);
}
