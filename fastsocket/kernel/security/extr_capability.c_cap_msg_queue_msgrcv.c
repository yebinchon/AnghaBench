
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct msg_queue {int dummy; } ;
struct msg_msg {int dummy; } ;



__attribute__((used)) static int cap_msg_queue_msgrcv(struct msg_queue *msq, struct msg_msg *msg,
    struct task_struct *target, long type, int mode)
{
 return 0;
}
