
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct sched_param {int dummy; } ;
struct TYPE_2__ {int (* task_setscheduler ) (struct task_struct*,int,struct sched_param*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,int,struct sched_param*) ;

int security_task_setscheduler(struct task_struct *p,
    int policy, struct sched_param *lp)
{
 return security_ops->task_setscheduler(p, policy, lp);
}
