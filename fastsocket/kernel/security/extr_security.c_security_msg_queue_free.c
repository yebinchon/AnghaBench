
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_queue {int dummy; } ;
struct TYPE_2__ {int (* msg_queue_free_security ) (struct msg_queue*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct msg_queue*) ;

void security_msg_queue_free(struct msg_queue *msq)
{
 security_ops->msg_queue_free_security(msq);
}
