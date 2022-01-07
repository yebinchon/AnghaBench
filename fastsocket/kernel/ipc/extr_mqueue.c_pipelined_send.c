
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int dummy; } ;
struct mqueue_inode_info {int dummy; } ;
struct ext_wait_queue {int state; int task; int list; struct msg_msg* msg; } ;


 int STATE_PENDING ;
 int STATE_READY ;
 int list_del (int *) ;
 int smp_wmb () ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void pipelined_send(struct mqueue_inode_info *info,
      struct msg_msg *message,
      struct ext_wait_queue *receiver)
{
 receiver->msg = message;
 list_del(&receiver->list);
 receiver->state = STATE_PENDING;
 wake_up_process(receiver->task);
 smp_wmb();
 receiver->state = STATE_READY;
}
