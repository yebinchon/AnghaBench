
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group_info {int dummy; } ;
struct TYPE_2__ {int (* task_setgroups ) (struct group_info*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct group_info*) ;

int security_task_setgroups(struct group_info *group_info)
{
 return security_ops->task_setgroups(group_info);
}
