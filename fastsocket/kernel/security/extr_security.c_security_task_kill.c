
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct TYPE_2__ {int (* task_kill ) (struct task_struct*,struct siginfo*,int,int ) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,struct siginfo*,int,int ) ;

int security_task_kill(struct task_struct *p, struct siginfo *info,
   int sig, u32 secid)
{
 return security_ops->task_kill(p, info, sig, secid);
}
