
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct perf_event_context {void* time; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; void* tstamp_enabled; void* tstamp_running; void* total_time_running; void* tstamp_stopped; void* total_time_enabled; TYPE_1__* group_leader; struct perf_event_context* ctx; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 void* perf_cgroup_event_time (struct perf_event*) ;
 void* perf_event_time (struct perf_event*) ;

__attribute__((used)) static void update_event_times(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;
 u64 run_end;

 if (event->state < PERF_EVENT_STATE_INACTIVE ||
     event->group_leader->state < PERF_EVENT_STATE_INACTIVE)
  return;
 if (is_cgroup_event(event))
  run_end = perf_cgroup_event_time(event);
 else if (ctx->is_active)
  run_end = ctx->time;
 else
  run_end = event->tstamp_stopped;

 event->total_time_enabled = run_end - event->tstamp_enabled;

 if (event->state == PERF_EVENT_STATE_INACTIVE)
  run_end = event->tstamp_stopped;
 else
  run_end = perf_event_time(event);

 event->total_time_running = run_end - event->tstamp_running;

}
