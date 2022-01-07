
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int state; int lock; scalar_t__ thread_task; int ep0_req_tag; int exception_req_tag; } ;
typedef enum fsg_state { ____Placeholder_fsg_state } fsg_state ;


 int SEND_SIG_FORCED ;
 int SIGUSR1 ;
 int send_sig_info (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void raise_exception(struct fsg_dev *fsg, enum fsg_state new_state)
{
 unsigned long flags;




 spin_lock_irqsave(&fsg->lock, flags);
 if (fsg->state <= new_state) {
  fsg->exception_req_tag = fsg->ep0_req_tag;
  fsg->state = new_state;
  if (fsg->thread_task)
   send_sig_info(SIGUSR1, SEND_SIG_FORCED,
     fsg->thread_task);
 }
 spin_unlock_irqrestore(&fsg->lock, flags);
}
