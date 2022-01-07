
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int cg_list; int cgroups; } ;
struct TYPE_4__ {int cgroups; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* current ;
 int get_css_set (int ) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void cgroup_fork(struct task_struct *child)
{
 task_lock(current);
 child->cgroups = current->cgroups;
 get_css_set(child->cgroups);
 task_unlock(current);
 INIT_LIST_HEAD(&child->cg_list);
}
