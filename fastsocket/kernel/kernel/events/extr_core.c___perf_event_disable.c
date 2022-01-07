
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; scalar_t__ task; } ;
struct perf_event {scalar_t__ state; struct perf_event* group_leader; struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EINVAL ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int event_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int group_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_cgrp_time_from_event (struct perf_event*) ;
 int update_context_time (struct perf_event_context*) ;
 int update_group_times (struct perf_event*) ;

__attribute__((used)) static int __perf_event_disable(void *info)
{
 struct perf_event *event = info;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);
 if (ctx->task && cpuctx->task_ctx != ctx)
  return -EINVAL;

 spin_lock(&ctx->lock);





 if (event->state >= PERF_EVENT_STATE_INACTIVE) {
  update_context_time(ctx);
  update_cgrp_time_from_event(event);
  update_group_times(event);
  if (event == event->group_leader)
   group_sched_out(event, cpuctx, ctx);
  else
   event_sched_out(event, cpuctx, ctx);
  event->state = PERF_EVENT_STATE_OFF;
 }

 spin_unlock(&ctx->lock);

 return 0;
}
