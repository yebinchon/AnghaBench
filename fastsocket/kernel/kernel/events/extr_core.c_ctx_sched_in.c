
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;
struct perf_event_context {int is_active; int timestamp; int nr_events; } ;
struct perf_cpu_context {int dummy; } ;
typedef enum event_type_t { ____Placeholder_event_type_t } event_type_t ;


 int EVENT_FLEXIBLE ;
 int EVENT_PINNED ;
 int ctx_flexible_sched_in (struct perf_event_context*,struct perf_cpu_context*) ;
 int ctx_pinned_sched_in (struct perf_event_context*,struct perf_cpu_context*) ;
 scalar_t__ likely (int) ;
 int perf_cgroup_set_timestamp (struct task_struct*,struct perf_event_context*) ;
 int perf_clock () ;

__attribute__((used)) static void
ctx_sched_in(struct perf_event_context *ctx,
      struct perf_cpu_context *cpuctx,
      enum event_type_t event_type,
      struct task_struct *task)
{
 u64 now;
 int is_active = ctx->is_active;

 ctx->is_active |= event_type;
 if (likely(!ctx->nr_events))
  return;

 now = perf_clock();
 ctx->timestamp = now;
 perf_cgroup_set_timestamp(task, ctx);




 if (!(is_active & EVENT_PINNED) && (event_type & EVENT_PINNED))
  ctx_pinned_sched_in(ctx, cpuctx);


 if (!(is_active & EVENT_FLEXIBLE) && (event_type & EVENT_FLEXIBLE))
  ctx_flexible_sched_in(ctx, cpuctx);
}
