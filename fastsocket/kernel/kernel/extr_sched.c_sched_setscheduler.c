
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_param {int dummy; } ;


 int __sched_setscheduler (struct task_struct*,int,struct sched_param*,int) ;

int sched_setscheduler(struct task_struct *p, int policy,
         struct sched_param *param)
{
 return __sched_setscheduler(p, policy, param, 1);
}
