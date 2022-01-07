
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* setprocattr ) (struct task_struct*,char*,void*,size_t) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,char*,void*,size_t) ;

int security_setprocattr(struct task_struct *p, char *name, void *value, size_t size)
{
 return security_ops->setprocattr(p, name, value, size);
}
