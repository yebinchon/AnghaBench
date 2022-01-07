
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; scalar_t__ mempolicy; } ;


 int PF_MEMPOLICY ;

void mpol_fix_fork_child_flag(struct task_struct *p)
{
 if (p->mempolicy)
  p->flags |= PF_MEMPOLICY;
 else
  p->flags &= ~PF_MEMPOLICY;
}
