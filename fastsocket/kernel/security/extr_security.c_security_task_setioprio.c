
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* task_setioprio ) (struct task_struct*,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,int) ;

int security_task_setioprio(struct task_struct *p, int ioprio)
{
 return security_ops->task_setioprio(p, ioprio);
}
