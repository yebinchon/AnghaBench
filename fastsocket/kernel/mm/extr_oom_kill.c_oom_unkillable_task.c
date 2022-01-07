
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct mem_cgroup {int dummy; } ;
typedef int nodemask_t ;


 int PF_KTHREAD ;
 int has_intersects_mems_allowed (struct task_struct*,int const*) ;
 scalar_t__ is_global_init (struct task_struct*) ;
 int task_in_mem_cgroup (struct task_struct*,struct mem_cgroup const*) ;

__attribute__((used)) static bool oom_unkillable_task(struct task_struct *p,
  const struct mem_cgroup *mem, const nodemask_t *nodemask)
{
 if (is_global_init(p))
  return 1;
 if (p->flags & PF_KTHREAD)
  return 1;


 if (mem && !task_in_mem_cgroup(p, mem))
  return 1;


 if (!has_intersects_mems_allowed(p, nodemask))
  return 1;

 return 0;
}
