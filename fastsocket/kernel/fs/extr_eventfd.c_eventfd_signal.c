
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct eventfd_ctx {int count; TYPE_1__ wqh; } ;


 int EINVAL ;
 int POLLIN ;
 int ULLONG_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;
 int wake_up_locked_poll (TYPE_1__*,int ) ;

int eventfd_signal(struct eventfd_ctx *ctx, int n)
{
 unsigned long flags;

 if (n < 0)
  return -EINVAL;
 spin_lock_irqsave(&ctx->wqh.lock, flags);
 if (ULLONG_MAX - ctx->count < n)
  n = (int) (ULLONG_MAX - ctx->count);
 ctx->count += n;
 if (waitqueue_active(&ctx->wqh))
  wake_up_locked_poll(&ctx->wqh, POLLIN);
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);

 return n;
}
