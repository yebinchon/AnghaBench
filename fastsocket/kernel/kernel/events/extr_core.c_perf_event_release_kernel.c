
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int mutex; int lock; int parent_ctx; } ;
struct perf_event {struct perf_event_context* ctx; } ;


 int SINGLE_DEPTH_NESTING ;
 int WARN_ON_ONCE (int ) ;
 int free_event (struct perf_event*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int perf_group_detach (struct perf_event*) ;
 int perf_remove_from_context (struct perf_event*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int perf_event_release_kernel(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;

 WARN_ON_ONCE(ctx->parent_ctx);
 mutex_lock_nested(&ctx->mutex, SINGLE_DEPTH_NESTING);
 spin_lock_irq(&ctx->lock);
 perf_group_detach(event);
 spin_unlock_irq(&ctx->lock);
 perf_remove_from_context(event);
 mutex_unlock(&ctx->mutex);

 free_event(event);

 return 0;
}
