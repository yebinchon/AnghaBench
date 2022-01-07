
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int state; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;


 int CGROUP_THAWED ;
 int cgroup_iter_end (struct cgroup*,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_iter_start (struct cgroup*,struct cgroup_iter*) ;
 int thaw_process (struct task_struct*) ;

__attribute__((used)) static void unfreeze_cgroup(struct cgroup *cgroup, struct freezer *freezer)
{
 struct cgroup_iter it;
 struct task_struct *task;

 cgroup_iter_start(cgroup, &it);
 while ((task = cgroup_iter_next(cgroup, &it))) {
  thaw_process(task);
 }
 cgroup_iter_end(cgroup, &it);

 freezer->state = CGROUP_THAWED;
}
