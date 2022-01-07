
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* task_create ) (unsigned long) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (unsigned long) ;

int security_task_create(unsigned long clone_flags)
{
 return security_ops->task_create(clone_flags);
}
