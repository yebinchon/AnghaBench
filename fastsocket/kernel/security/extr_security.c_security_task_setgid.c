
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gid_t ;
struct TYPE_2__ {int (* task_setgid ) (int ,int ,int ,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (int ,int ,int ,int) ;

int security_task_setgid(gid_t id0, gid_t id1, gid_t id2, int flags)
{
 return security_ops->task_setgid(id0, id1, id2, flags);
}
