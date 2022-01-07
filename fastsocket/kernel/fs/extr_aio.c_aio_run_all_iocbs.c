
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int ctx_lock; } ;


 scalar_t__ __aio_run_iocbs (struct kioctx*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void aio_run_all_iocbs(struct kioctx *ctx)
{
 spin_lock_irq(&ctx->ctx_lock);
 while (__aio_run_iocbs(ctx))
  ;
 spin_unlock_irq(&ctx->ctx_lock);
}
