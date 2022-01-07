
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {int might_cancel; int clist; } ;


 int cancel_lock ;
 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void timerfd_remove_cancel(struct timerfd_ctx *ctx)
{
 if (ctx->might_cancel) {
  ctx->might_cancel = 0;
  spin_lock(&cancel_lock);
  list_del_rcu(&ctx->clist);
  spin_unlock(&cancel_lock);
 }
}
