
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct kioctx {int rcu_head; int * mm; TYPE_1__ wq; int reqs_active; } ;


 int BUG_ON (int ) ;
 int aio_free_ring (struct kioctx*) ;
 int call_rcu (int *,int ) ;
 int cancel_delayed_work (TYPE_1__*) ;
 int cancel_work_sync (int *) ;
 int ctx_rcu_free ;
 int mmdrop (int *) ;
 int pr_debug (char*,struct kioctx*) ;

__attribute__((used)) static void __put_ioctx(struct kioctx *ctx)
{
 BUG_ON(ctx->reqs_active);

 cancel_delayed_work(&ctx->wq);
 cancel_work_sync(&ctx->wq.work);
 aio_free_ring(ctx);
 mmdrop(ctx->mm);
 ctx->mm = ((void*)0);
 pr_debug("__put_ioctx: freeing %p\n", ctx);
 call_rcu(&ctx->rcu_head, ctx_rcu_free);
}
