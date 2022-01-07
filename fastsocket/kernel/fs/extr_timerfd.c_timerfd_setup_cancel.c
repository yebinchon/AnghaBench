
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {scalar_t__ clockid; int might_cancel; int clist; } ;


 scalar_t__ CLOCK_REALTIME ;
 int TFD_TIMER_ABSTIME ;
 int TFD_TIMER_CANCEL_ON_SET ;
 int cancel_list ;
 int cancel_lock ;
 int list_add_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timerfd_remove_cancel (struct timerfd_ctx*) ;

__attribute__((used)) static void timerfd_setup_cancel(struct timerfd_ctx *ctx, int flags)
{
 if (ctx->clockid == CLOCK_REALTIME && (flags & TFD_TIMER_ABSTIME) &&
     (flags & TFD_TIMER_CANCEL_ON_SET)) {
  if (!ctx->might_cancel) {
   ctx->might_cancel = 1;
   spin_lock(&cancel_lock);
   list_add_rcu(&ctx->clist, &cancel_list);
   spin_unlock(&cancel_lock);
  }
 } else if (ctx->might_cancel) {
  timerfd_remove_cancel(ctx);
 }
}
