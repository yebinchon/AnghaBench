
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct perf_event_context {int dummy; } ;
struct perf_event {void* tstamp_stopped; void* tstamp_running; void* tstamp_enabled; } ;


 int list_add_event (struct perf_event*,struct perf_event_context*) ;
 void* perf_event_time (struct perf_event*) ;
 int perf_group_attach (struct perf_event*) ;

__attribute__((used)) static void add_event_to_ctx(struct perf_event *event,
          struct perf_event_context *ctx)
{
 u64 tstamp = perf_event_time(event);

 list_add_event(event, ctx);
 perf_group_attach(event);
 event->tstamp_enabled = tstamp;
 event->tstamp_running = tstamp;
 event->tstamp_stopped = tstamp;
}
