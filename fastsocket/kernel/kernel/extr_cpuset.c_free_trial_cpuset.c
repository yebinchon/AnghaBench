
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cpus_allowed; } ;


 int free_cpumask_var (int ) ;
 int kfree (struct cpuset*) ;

__attribute__((used)) static void free_trial_cpuset(struct cpuset *trial)
{
 free_cpumask_var(trial->cpus_allowed);
 kfree(trial);
}
