
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EVENT_ALL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int ) ;

__attribute__((used)) static void task_ctx_sched_out(struct perf_event_context *ctx)
{
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);

 if (!cpuctx->task_ctx)
  return;

 if (WARN_ON_ONCE(ctx != cpuctx->task_ctx))
  return;

 ctx_sched_out(ctx, cpuctx, EVENT_ALL);
 cpuctx->task_ctx = ((void*)0);
}
