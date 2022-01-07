
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kioctx {int ctx_lock; } ;
struct TYPE_4__ {int * prev; int next; } ;
struct TYPE_3__ {int task_list; } ;
struct kiocb {TYPE_2__ ki_run_list; TYPE_1__ ki_wait; int (* ki_retry ) (struct kiocb*) ;struct kioctx* ki_ctx; } ;
typedef int ssize_t ;


 int BUG_ON (int) ;
 int EINTR ;
 int EIOCBQUEUED ;
 int EIOCBRETRY ;
 int INIT_LIST_HEAD (TYPE_2__*) ;
 int __queue_kicked_iocb (struct kiocb*) ;
 int aio_complete (struct kiocb*,int ,int ) ;
 int aio_queue_work (struct kioctx*) ;
 int kiocbClearKicked (struct kiocb*) ;
 scalar_t__ kiocbIsCancelled (struct kiocb*) ;
 scalar_t__ kiocbIsKicked (struct kiocb*) ;
 int list_empty (int *) ;
 int printk (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t aio_run_iocb(struct kiocb *iocb)
{
 struct kioctx *ctx = iocb->ki_ctx;
 ssize_t (*retry)(struct kiocb *);
 ssize_t ret;

 if (!(retry = iocb->ki_retry)) {
  printk("aio_run_iocb: iocb->ki_retry = NULL\n");
  return 0;
 }
 kiocbClearKicked(iocb);







 iocb->ki_run_list.next = iocb->ki_run_list.prev = ((void*)0);
 spin_unlock_irq(&ctx->ctx_lock);


 if (kiocbIsCancelled(iocb)) {
  ret = -EINTR;
  aio_complete(iocb, ret, 0);

  goto out;
 }





 ret = retry(iocb);

 if (ret != -EIOCBRETRY && ret != -EIOCBQUEUED) {
  BUG_ON(!list_empty(&iocb->ki_wait.task_list));
  aio_complete(iocb, ret, 0);
 }
out:
 spin_lock_irq(&ctx->ctx_lock);

 if (-EIOCBRETRY == ret) {
  INIT_LIST_HEAD(&iocb->ki_run_list);


  if (kiocbIsKicked(iocb)) {
   __queue_kicked_iocb(iocb);







   aio_queue_work(ctx);
  }
 }
 return ret;
}
