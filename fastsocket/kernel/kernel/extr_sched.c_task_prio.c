
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; } ;


 int MAX_RT_PRIO ;

int task_prio(const struct task_struct *p)
{
 return p->prio - MAX_RT_PRIO;
}
