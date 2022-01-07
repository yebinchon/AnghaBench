
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct cpuset {int mems_allowed; int cpus_allowed; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int EINVAL ;
 int ENOSPC ;
 int PF_THREAD_BOUND ;
 struct cpuset* cgroup_cs (struct cgroup*) ;
 scalar_t__ cpumask_empty (int ) ;
 scalar_t__ nodes_empty (int ) ;

__attribute__((used)) static int cpuset_can_attach(struct cgroup_subsys *ss, struct cgroup *cont,
        struct task_struct *tsk)
{
 struct cpuset *cs = cgroup_cs(cont);

 if (cpumask_empty(cs->cpus_allowed) || nodes_empty(cs->mems_allowed))
  return -ENOSPC;
 if (tsk->flags & PF_THREAD_BOUND)
  return -EINVAL;

 return 0;
}
