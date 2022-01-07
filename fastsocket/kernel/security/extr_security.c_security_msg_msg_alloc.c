
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_msg {int dummy; } ;
struct TYPE_2__ {int (* msg_msg_alloc_security ) (struct msg_msg*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct msg_msg*) ;

int security_msg_msg_alloc(struct msg_msg *msg)
{
 return security_ops->msg_msg_alloc_security(msg);
}
