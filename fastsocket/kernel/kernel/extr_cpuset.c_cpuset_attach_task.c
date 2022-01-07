
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct cpuset* cgroup_cs (struct cgroup*) ;
 int cpus_attach ;
 int cpuset_attach_nodemask_to ;
 int cpuset_change_task_nodemask (struct task_struct*,int *) ;
 int cpuset_update_task_spread_flag (struct cpuset*,struct task_struct*) ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;

__attribute__((used)) static void cpuset_attach_task(struct cgroup *cont, struct task_struct *tsk)
{
 int err;
 struct cpuset *cs = cgroup_cs(cont);





 err = set_cpus_allowed_ptr(tsk, cpus_attach);
 WARN_ON_ONCE(err);

 cpuset_change_task_nodemask(tsk, &cpuset_attach_nodemask_to);
 cpuset_update_task_spread_flag(cs, tsk);
}
