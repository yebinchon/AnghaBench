
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_queue {int dummy; } ;
struct TYPE_2__ {int (* msg_queue_msgctl ) (struct msg_queue*,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct msg_queue*,int) ;

int security_msg_queue_msgctl(struct msg_queue *msq, int cmd)
{
 return security_ops->msg_queue_msgctl(msq, cmd);
}
