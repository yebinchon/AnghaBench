
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_2__ {int (* task_setuid ) (int ,int ,int ,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (int ,int ,int ,int) ;

int security_task_setuid(uid_t id0, uid_t id1, uid_t id2, int flags)
{
 return security_ops->task_setuid(id0, id1, id2, flags);
}
