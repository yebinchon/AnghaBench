
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct css_set* cgroups; int cg_list; } ;
struct css_set {int * subsys; } ;
struct cgroup_subsys {int (* exit ) (struct cgroup_subsys*,struct cgroup*,struct cgroup*,struct task_struct*) ;} ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* cgroup; } ;


 int CGROUP_SUBSYS_COUNT ;
 int css_set_lock ;
 struct css_set init_css_set ;
 int list_del (int *) ;
 int list_empty (int *) ;
 scalar_t__ need_forkexit_callback ;
 int put_css_set_taskexit (struct css_set*) ;
 TYPE_1__* rcu_dereference (int ) ;
 int stub1 (struct cgroup_subsys*,struct cgroup*,struct cgroup*,struct task_struct*) ;
 struct cgroup_subsys** subsys ;
 struct cgroup* task_cgroup (struct task_struct*,int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void cgroup_exit(struct task_struct *tsk, int run_callbacks)
{
 int i;
 struct css_set *cg;







 if (!list_empty(&tsk->cg_list)) {
  write_lock(&css_set_lock);
  if (!list_empty(&tsk->cg_list))
   list_del(&tsk->cg_list);
  write_unlock(&css_set_lock);
 }


 task_lock(tsk);
 cg = tsk->cgroups;
 tsk->cgroups = &init_css_set;

 if (run_callbacks && need_forkexit_callback) {




  for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
   struct cgroup_subsys *ss = subsys[i];
   if (ss->exit) {
    struct cgroup *old_cgrp =
     rcu_dereference(cg->subsys[i])->cgroup;
    struct cgroup *cgrp = task_cgroup(tsk, i);
    ss->exit(ss, cgrp, old_cgrp, tsk);
   }
  }
 }
 task_unlock(tsk);

 if (cg)
  put_css_set_taskexit(cg);
}
