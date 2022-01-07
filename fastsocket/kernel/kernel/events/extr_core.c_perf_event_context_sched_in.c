
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int pmu; scalar_t__ nr_events; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EVENT_FLEXIBLE ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int cpu_ctx_sched_out (struct perf_cpu_context*,int ) ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_event_sched_in (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 int perf_pmu_rotate_start (int ) ;

__attribute__((used)) static void perf_event_context_sched_in(struct perf_event_context *ctx,
     struct task_struct *task)
{
 struct perf_cpu_context *cpuctx;

 cpuctx = __get_cpu_context(ctx);
 if (cpuctx->task_ctx == ctx)
  return;

 perf_ctx_lock(cpuctx, ctx);
 perf_pmu_disable(ctx->pmu);





 cpu_ctx_sched_out(cpuctx, EVENT_FLEXIBLE);

 if (ctx->nr_events)
  cpuctx->task_ctx = ctx;

 perf_event_sched_in(cpuctx, cpuctx->task_ctx, task);

 perf_pmu_enable(ctx->pmu);
 perf_ctx_unlock(cpuctx, ctx);





 perf_pmu_rotate_start(ctx->pmu);
}
