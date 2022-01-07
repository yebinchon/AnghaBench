
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_context {int lock; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; struct perf_event_context* ctx; int oncpu; } ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 int __perf_event_read ;
 int perf_event_count (struct perf_event*) ;
 int smp_call_function_single (int ,int ,struct perf_event*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_cgrp_time_from_event (struct perf_event*) ;
 int update_context_time (struct perf_event_context*) ;
 int update_event_times (struct perf_event*) ;

__attribute__((used)) static u64 perf_event_read(struct perf_event *event)
{




 if (event->state == PERF_EVENT_STATE_ACTIVE) {
  smp_call_function_single(event->oncpu,
      __perf_event_read, event, 1);
 } else if (event->state == PERF_EVENT_STATE_INACTIVE) {
  struct perf_event_context *ctx = event->ctx;
  unsigned long flags;

  spin_lock_irqsave(&ctx->lock, flags);





  if (ctx->is_active) {
   update_context_time(ctx);
   update_cgrp_time_from_event(event);
  }
  update_event_times(event);
  spin_unlock_irqrestore(&ctx->lock, flags);
 }

 return perf_event_count(event);
}
