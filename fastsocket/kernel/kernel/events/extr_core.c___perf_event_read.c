
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int lock; scalar_t__ is_active; scalar_t__ task; } ;
struct perf_event {scalar_t__ state; TYPE_1__* pmu; struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;
struct TYPE_2__ {int (* read ) (struct perf_event*) ;} ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct perf_event*) ;
 int update_cgrp_time_from_event (struct perf_event*) ;
 int update_context_time (struct perf_event_context*) ;
 int update_event_times (struct perf_event*) ;

__attribute__((used)) static void __perf_event_read(void *info)
{
 struct perf_event *event = info;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);
 if (ctx->task && cpuctx->task_ctx != ctx)
  return;

 spin_lock(&ctx->lock);
 if (ctx->is_active) {
  update_context_time(ctx);
  update_cgrp_time_from_event(event);
 }
 update_event_times(event);
 if (event->state == PERF_EVENT_STATE_ACTIVE)
  event->pmu->read(event);
 spin_unlock(&ctx->lock);
}
