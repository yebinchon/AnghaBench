
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; scalar_t__ exit_state; } ;


 int PF_NOFREEZE ;
 struct task_struct* current ;

__attribute__((used)) static inline int freezeable(struct task_struct * p)
{
 if ((p == current) ||
     (p->flags & PF_NOFREEZE) ||
     (p->exit_state != 0))
  return 0;
 return 1;
}
