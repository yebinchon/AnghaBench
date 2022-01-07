
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* task_getsecid ) (struct task_struct*,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,int *) ;

void security_task_getsecid(struct task_struct *p, u32 *secid)
{
 security_ops->task_getsecid(p, secid);
}
