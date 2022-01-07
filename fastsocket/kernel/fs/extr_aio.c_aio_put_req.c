
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int ctx_lock; } ;
struct kiocb {struct kioctx* ki_ctx; } ;


 int __aio_put_req (struct kioctx*,struct kiocb*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int aio_put_req(struct kiocb *req)
{
 struct kioctx *ctx = req->ki_ctx;
 int ret;
 spin_lock_irq(&ctx->ctx_lock);
 ret = __aio_put_req(ctx, req);
 spin_unlock_irq(&ctx->ctx_lock);
 return ret;
}
