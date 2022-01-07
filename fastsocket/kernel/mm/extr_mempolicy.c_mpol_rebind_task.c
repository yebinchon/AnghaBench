
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mempolicy; } ;
typedef int nodemask_t ;
typedef enum mpol_rebind_step { ____Placeholder_mpol_rebind_step } mpol_rebind_step ;


 int mpol_rebind_policy (int ,int const*,int) ;

void mpol_rebind_task(struct task_struct *tsk, const nodemask_t *new,
   enum mpol_rebind_step step)
{
 mpol_rebind_policy(tsk->mempolicy, new, step);
}
