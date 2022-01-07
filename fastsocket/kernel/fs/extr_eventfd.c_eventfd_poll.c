
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct eventfd_ctx* private_data; } ;
struct TYPE_2__ {int lock; } ;
struct eventfd_ctx {scalar_t__ count; TYPE_1__ wqh; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 int ULLONG_MAX ;
 int poll_wait (struct file*,TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int eventfd_poll(struct file *file, poll_table *wait)
{
 struct eventfd_ctx *ctx = file->private_data;
 unsigned int events = 0;
 unsigned long flags;

 poll_wait(file, &ctx->wqh, wait);

 spin_lock_irqsave(&ctx->wqh.lock, flags);
 if (ctx->count > 0)
  events |= POLLIN;
 if (ctx->count == ULLONG_MAX)
  events |= POLLERR;
 if (ULLONG_MAX - 1 > ctx->count)
  events |= POLLOUT;
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);

 return events;
}
