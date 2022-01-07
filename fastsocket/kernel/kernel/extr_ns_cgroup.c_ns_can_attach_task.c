
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup {int dummy; } ;


 int EPERM ;
 int cgroup_is_descendant (struct cgroup*,struct task_struct*) ;

__attribute__((used)) static int ns_can_attach_task(struct cgroup *cgroup, struct task_struct *task)
{
 if (!cgroup_is_descendant(cgroup, task))
  return -EPERM;

 return 0;
}
