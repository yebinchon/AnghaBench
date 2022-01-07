
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* cgroups; int cg_list; } ;
struct TYPE_2__ {int tasks; } ;


 int css_set_lock ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 scalar_t__ use_task_css_set_links ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void cgroup_post_fork(struct task_struct *child)
{
 if (use_task_css_set_links) {
  write_lock(&css_set_lock);
  task_lock(child);
  if (list_empty(&child->cg_list))
   list_add(&child->cg_list, &child->cgroups->tasks);
  task_unlock(child);
  write_unlock(&css_set_lock);
 }
}
