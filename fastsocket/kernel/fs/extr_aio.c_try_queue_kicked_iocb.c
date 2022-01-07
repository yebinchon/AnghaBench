
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kioctx {int ctx_lock; } ;
struct TYPE_2__ {int task_list; } ;
struct kiocb {TYPE_1__ ki_wait; struct kioctx* ki_ctx; } ;


 int BUG_ON (int) ;
 int __queue_kicked_iocb (struct kiocb*) ;
 int aio_queue_work (struct kioctx*) ;
 int kiocbTryKick (struct kiocb*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void try_queue_kicked_iocb(struct kiocb *iocb)
{
  struct kioctx *ctx = iocb->ki_ctx;
 unsigned long flags;
 int run = 0;






 BUG_ON((!list_empty(&iocb->ki_wait.task_list)));

 spin_lock_irqsave(&ctx->ctx_lock, flags);


 if (!kiocbTryKick(iocb))
  run = __queue_kicked_iocb(iocb);
 spin_unlock_irqrestore(&ctx->ctx_lock, flags);
 if (run)
  aio_queue_work(ctx);
}
