
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct perf_event_context {struct task_struct* task; int lock; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct TYPE_2__ {int pmu; } ;
struct perf_cpu_context {TYPE_1__ ctx; struct perf_event_context* task_ctx; } ;


 int EVENT_ALL ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int add_event_to_ctx (struct perf_event*,struct perf_event_context*) ;
 int cpu_ctx_sched_out (struct perf_cpu_context*,int ) ;
 struct task_struct* current ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_event_sched_in (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_ctx_sched_out (struct perf_event_context*) ;
 int update_cgrp_time_from_event (struct perf_event*) ;
 int update_context_time (struct perf_event_context*) ;

__attribute__((used)) static int __perf_install_in_context(void *info)
{
 struct perf_event *event = info;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);
 struct perf_event_context *task_ctx = cpuctx->task_ctx;
 struct task_struct *task = current;

 perf_ctx_lock(cpuctx, task_ctx);
 perf_pmu_disable(cpuctx->ctx.pmu);




 if (task_ctx)
  task_ctx_sched_out(task_ctx);





 if (ctx->task && task_ctx != ctx) {
  if (task_ctx)
   spin_unlock(&task_ctx->lock);
  spin_lock(&ctx->lock);
  task_ctx = ctx;
 }

 if (task_ctx) {
  cpuctx->task_ctx = task_ctx;
  task = task_ctx->task;
 }

 cpu_ctx_sched_out(cpuctx, EVENT_ALL);

 update_context_time(ctx);





 update_cgrp_time_from_event(event);

 add_event_to_ctx(event, ctx);




 perf_event_sched_in(cpuctx, task_ctx, task);

 perf_pmu_enable(cpuctx->ctx.pmu);
 perf_ctx_unlock(cpuctx, task_ctx);

 return 0;
}
