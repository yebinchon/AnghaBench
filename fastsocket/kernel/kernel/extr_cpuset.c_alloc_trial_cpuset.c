
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cpus_allowed; } ;


 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 int cpumask_copy (int ,int ) ;
 int kfree (struct cpuset*) ;
 struct cpuset* kmemdup (struct cpuset const*,int,int ) ;

__attribute__((used)) static struct cpuset *alloc_trial_cpuset(const struct cpuset *cs)
{
 struct cpuset *trial;

 trial = kmemdup(cs, sizeof(*cs), GFP_KERNEL);
 if (!trial)
  return ((void*)0);

 if (!alloc_cpumask_var(&trial->cpus_allowed, GFP_KERNEL)) {
  kfree(trial);
  return ((void*)0);
 }
 cpumask_copy(trial->cpus_allowed, cs->cpus_allowed);

 return trial;
}
