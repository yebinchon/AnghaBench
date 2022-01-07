
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct msg_queue {int dummy; } ;
struct msg_msg {int dummy; } ;
struct TYPE_2__ {int (* msg_queue_msgrcv ) (struct msg_queue*,struct msg_msg*,struct task_struct*,long,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct msg_queue*,struct msg_msg*,struct task_struct*,long,int) ;

int security_msg_queue_msgrcv(struct msg_queue *msq, struct msg_msg *msg,
          struct task_struct *target, long type, int mode)
{
 return security_ops->msg_queue_msgrcv(msq, msg, target, type, mode);
}
