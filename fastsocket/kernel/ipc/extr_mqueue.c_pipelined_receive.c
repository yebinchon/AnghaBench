
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_inode_info {int wait_q; } ;
struct ext_wait_queue {int state; int task; int list; int msg; } ;


 int SEND ;
 int STATE_PENDING ;
 int STATE_READY ;
 int list_del (int *) ;
 scalar_t__ msg_insert (int ,struct mqueue_inode_info*) ;
 int smp_wmb () ;
 int wake_up_interruptible (int *) ;
 int wake_up_process (int ) ;
 struct ext_wait_queue* wq_get_first_waiter (struct mqueue_inode_info*,int ) ;

__attribute__((used)) static inline void pipelined_receive(struct mqueue_inode_info *info)
{
 struct ext_wait_queue *sender = wq_get_first_waiter(info, SEND);

 if (!sender) {

  wake_up_interruptible(&info->wait_q);
  return;
 }
 if (msg_insert(sender->msg, info))
  return;
 list_del(&sender->list);
 sender->state = STATE_PENDING;
 wake_up_process(sender->task);
 smp_wmb();
 sender->state = STATE_READY;
}
