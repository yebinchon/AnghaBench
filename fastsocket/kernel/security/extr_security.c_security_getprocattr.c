
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* getprocattr ) (struct task_struct*,char*,char**) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,char*,char**) ;

int security_getprocattr(struct task_struct *p, char *name, char **value)
{
 return security_ops->getprocattr(p, name, value);
}
