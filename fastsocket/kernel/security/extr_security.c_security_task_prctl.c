
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* task_prctl ) (int,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (int,unsigned long,unsigned long,unsigned long,unsigned long) ;

int security_task_prctl(int option, unsigned long arg2, unsigned long arg3,
    unsigned long arg4, unsigned long arg5)
{
 return security_ops->task_prctl(option, arg2, arg3, arg4, arg5);
}
