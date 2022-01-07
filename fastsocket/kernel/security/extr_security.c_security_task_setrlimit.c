
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rlimit {int dummy; } ;
struct TYPE_2__ {int (* task_setrlimit ) (struct task_struct*,unsigned int,struct rlimit*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,unsigned int,struct rlimit*) ;

int security_task_setrlimit(struct task_struct *p, unsigned int resource,
  struct rlimit *new_rlim)
{
 return security_ops->task_setrlimit(p, resource, new_rlim);
}
