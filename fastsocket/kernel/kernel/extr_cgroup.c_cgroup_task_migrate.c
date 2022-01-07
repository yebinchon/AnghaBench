
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int cg_list; struct css_set* cgroups; } ;
struct css_set {int tasks; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup {int flags; } ;


 int BUG_ON (int) ;
 int CGROUP_SUBSYS_COUNT ;
 int CGRP_RELEASABLE ;
 int ENOMEM ;
 int ESRCH ;
 int PF_EXITING ;
 int css_set_lock ;
 struct css_set* find_css_set (struct css_set*,struct cgroup*) ;
 struct css_set* find_existing_css_set (struct css_set*,struct cgroup*,struct cgroup_subsys_state**) ;
 int get_css_set (struct css_set*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int might_sleep () ;
 int put_css_set (struct css_set*) ;
 int rcu_assign_pointer (struct css_set*,struct css_set*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_bit (int ,int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int cgroup_task_migrate(struct cgroup *cgrp, struct cgroup *oldcgrp,
          struct task_struct *tsk, bool guarantee)
{
 struct css_set *oldcg;
 struct css_set *newcg;






 task_lock(tsk);
 oldcg = tsk->cgroups;
 get_css_set(oldcg);
 task_unlock(tsk);


 if (guarantee) {

  struct cgroup_subsys_state *template[CGROUP_SUBSYS_COUNT];
  read_lock(&css_set_lock);
  newcg = find_existing_css_set(oldcg, cgrp, template);
  BUG_ON(!newcg);
  get_css_set(newcg);
  read_unlock(&css_set_lock);
 } else {
  might_sleep();

  newcg = find_css_set(oldcg, cgrp);
  if (!newcg) {
   put_css_set(oldcg);
   return -ENOMEM;
  }
 }
 put_css_set(oldcg);


 task_lock(tsk);
 if (tsk->flags & PF_EXITING) {
  task_unlock(tsk);
  put_css_set(newcg);
  return -ESRCH;
 }
 rcu_assign_pointer(tsk->cgroups, newcg);
 task_unlock(tsk);


 write_lock(&css_set_lock);
 if (!list_empty(&tsk->cg_list))
  list_move(&tsk->cg_list, &newcg->tasks);
 write_unlock(&css_set_lock);






 put_css_set(oldcg);

 set_bit(CGRP_RELEASABLE, &oldcgrp->flags);
 return 0;
}
