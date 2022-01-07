
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int rt_priority; } ;


 int MAX_RT_PRIO ;
 int __normal_prio (struct task_struct*) ;
 scalar_t__ task_has_rt_policy (struct task_struct*) ;

__attribute__((used)) static inline int normal_prio(struct task_struct *p)
{
 int prio;

 if (task_has_rt_policy(p))
  prio = MAX_RT_PRIO-1 - p->rt_priority;
 else
  prio = __normal_prio(p);
 return prio;
}
