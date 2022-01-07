
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mems_allowed; } ;


 int nodes_intersects (int ,int ) ;

int cpuset_mems_allowed_intersects(const struct task_struct *tsk1,
       const struct task_struct *tsk2)
{
 return nodes_intersects(tsk1->mems_allowed, tsk2->mems_allowed);
}
