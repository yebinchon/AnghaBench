
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;


 struct cpuset* cgroup_cs (struct cgroup*) ;
 int cpu_possible_mask ;
 int cpumask_copy (int ,int ) ;
 int cpus_attach ;
 int cpuset_attach_nodemask_to ;
 int guarantee_online_cpus (struct cpuset*,int ) ;
 int guarantee_online_mems (struct cpuset*,int *) ;
 struct cpuset top_cpuset ;

__attribute__((used)) static void cpuset_pre_attach(struct cgroup *cont)
{
 struct cpuset *cs = cgroup_cs(cont);

 if (cs == &top_cpuset)
  cpumask_copy(cpus_attach, cpu_possible_mask);
 else
  guarantee_online_cpus(cs, cpus_attach);

 guarantee_online_mems(cs, &cpuset_attach_nodemask_to);
}
