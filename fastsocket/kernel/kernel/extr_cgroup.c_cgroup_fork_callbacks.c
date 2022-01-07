
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_subsys {int (* fork ) (struct cgroup_subsys*,struct task_struct*) ;} ;


 int CGROUP_SUBSYS_COUNT ;
 scalar_t__ need_forkexit_callback ;
 int stub1 (struct cgroup_subsys*,struct task_struct*) ;
 struct cgroup_subsys** subsys ;

void cgroup_fork_callbacks(struct task_struct *child)
{
 if (need_forkexit_callback) {
  int i;
  for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
   struct cgroup_subsys *ss = subsys[i];
   if (ss->fork)
    ss->fork(ss, child);
  }
 }
}
