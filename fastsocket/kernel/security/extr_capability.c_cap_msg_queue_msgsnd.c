
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_queue {int dummy; } ;
struct msg_msg {int dummy; } ;



__attribute__((used)) static int cap_msg_queue_msgsnd(struct msg_queue *msq, struct msg_msg *msg,
    int msgflg)
{
 return 0;
}
