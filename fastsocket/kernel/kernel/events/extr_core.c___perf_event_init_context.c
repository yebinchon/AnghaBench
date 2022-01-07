
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int refcount; int event_list; int flexible_groups; int pinned_groups; int mutex; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __perf_event_init_context(struct perf_event_context *ctx)
{
 spin_lock_init(&ctx->lock);
 mutex_init(&ctx->mutex);
 INIT_LIST_HEAD(&ctx->pinned_groups);
 INIT_LIST_HEAD(&ctx->flexible_groups);
 INIT_LIST_HEAD(&ctx->event_list);
 atomic_set(&ctx->refcount, 1);
}
