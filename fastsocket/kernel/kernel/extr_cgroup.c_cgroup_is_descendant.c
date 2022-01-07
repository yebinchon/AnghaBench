
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef struct cgroup {struct cgroup const* parent; struct cgroup const* top_cgroup; int root; } const cgroup ;


 struct cgroup const* dummytop ;
 struct cgroup const* task_cgroup_from_root (struct task_struct*,int ) ;

int cgroup_is_descendant(const struct cgroup *cgrp, struct task_struct *task)
{
 int ret;
 struct cgroup *target;

 if (cgrp == dummytop)
  return 1;

 target = task_cgroup_from_root(task, cgrp->root);
 while (cgrp != target && cgrp!= cgrp->top_cgroup)
  cgrp = cgrp->parent;
 ret = (cgrp == target);
 return ret;
}
