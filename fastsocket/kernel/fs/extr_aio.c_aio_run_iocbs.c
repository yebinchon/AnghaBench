
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int ctx_lock; } ;


 int __aio_run_iocbs (struct kioctx*) ;
 int aio_queue_work (struct kioctx*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void aio_run_iocbs(struct kioctx *ctx)
{
 int requeue;

 spin_lock_irq(&ctx->ctx_lock);

 requeue = __aio_run_iocbs(ctx);
 spin_unlock_irq(&ctx->ctx_lock);
 if (requeue)
  aio_queue_work(ctx);
}
