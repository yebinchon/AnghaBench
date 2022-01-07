
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int state; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;


 int CGROUP_FREEZING ;
 int EBUSY ;
 int cgroup_iter_end (struct cgroup*,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_iter_start (struct cgroup*,struct cgroup_iter*) ;
 int freeze_task (struct task_struct*,int) ;
 int freezer_should_skip (struct task_struct*) ;
 int freezing (struct task_struct*) ;
 scalar_t__ is_task_frozen_enough (struct task_struct*) ;

__attribute__((used)) static int try_to_freeze_cgroup(struct cgroup *cgroup, struct freezer *freezer)
{
 struct cgroup_iter it;
 struct task_struct *task;
 unsigned int num_cant_freeze_now = 0;

 freezer->state = CGROUP_FREEZING;
 cgroup_iter_start(cgroup, &it);
 while ((task = cgroup_iter_next(cgroup, &it))) {
  if (!freeze_task(task, 1))
   continue;
  if (is_task_frozen_enough(task))
   continue;
  if (!freezing(task) && !freezer_should_skip(task))
   num_cant_freeze_now++;
 }
 cgroup_iter_end(cgroup, &it);

 return num_cant_freeze_now ? -EBUSY : 0;
}
