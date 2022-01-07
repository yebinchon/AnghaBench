
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; scalar_t__ is_active; int nr_events; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int event_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int list_del_event (struct perf_event*,struct perf_event_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __perf_remove_from_context(void *info)
{
 struct perf_event *event = info;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);

 spin_lock(&ctx->lock);
 event_sched_out(event, cpuctx, ctx);
 list_del_event(event, ctx);
 if (!ctx->nr_events && cpuctx->task_ctx == ctx) {
  ctx->is_active = 0;
  cpuctx->task_ctx = ((void*)0);
 }
 spin_unlock(&ctx->lock);

 return 0;
}
