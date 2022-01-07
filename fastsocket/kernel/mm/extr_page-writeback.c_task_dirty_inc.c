
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dirties; } ;


 int prop_inc_single (int *,int *) ;
 int vm_dirties ;

void task_dirty_inc(struct task_struct *tsk)
{
 prop_inc_single(&vm_dirties, &tsk->dirties);
}
