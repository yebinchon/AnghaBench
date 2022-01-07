
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int normal_prio; int prio; } ;


 int normal_prio (struct task_struct*) ;
 int rt_prio (int) ;

__attribute__((used)) static int effective_prio(struct task_struct *p)
{
 p->normal_prio = normal_prio(p);





 if (!rt_prio(p->prio))
  return p->normal_prio;
 return p->prio;
}
