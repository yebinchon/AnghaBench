
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_queue_t ;
struct TYPE_4__ {int lock; } ;
struct eventfd_ctx {TYPE_1__ wqh; } ;
typedef scalar_t__ __u64 ;


 int EAGAIN ;
 int POLLOUT ;
 int __remove_wait_queue (TYPE_1__*,int *) ;
 int eventfd_ctx_do_read (struct eventfd_ctx*,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;
 int wake_up_locked_poll (TYPE_1__*,int ) ;

int eventfd_ctx_remove_wait_queue(struct eventfd_ctx *ctx, wait_queue_t *wait,
      __u64 *cnt)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->wqh.lock, flags);
 eventfd_ctx_do_read(ctx, cnt);
 __remove_wait_queue(&ctx->wqh, wait);
 if (*cnt != 0 && waitqueue_active(&ctx->wqh))
  wake_up_locked_poll(&ctx->wqh, POLLOUT);
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);

 return *cnt != 0 ? 0 : -EAGAIN;
}
