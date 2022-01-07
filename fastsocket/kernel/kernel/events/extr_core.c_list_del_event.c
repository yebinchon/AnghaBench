
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int nr_stat; int nr_events; int nr_cgroups; } ;
struct TYPE_2__ {scalar_t__ inherit_stat; } ;
struct perf_event {int attach_state; scalar_t__ state; int group_entry; struct perf_event* group_leader; int event_entry; TYPE_1__ attr; } ;
struct perf_cpu_context {int * cgrp; } ;


 int PERF_ATTACH_CONTEXT ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int update_group_times (struct perf_event*) ;

__attribute__((used)) static void
list_del_event(struct perf_event *event, struct perf_event_context *ctx)
{
 struct perf_cpu_context *cpuctx;



 if (!(event->attach_state & PERF_ATTACH_CONTEXT))
  return;

 event->attach_state &= ~PERF_ATTACH_CONTEXT;

 if (is_cgroup_event(event)) {
  ctx->nr_cgroups--;
  cpuctx = __get_cpu_context(ctx);





  if (!ctx->nr_cgroups)
   cpuctx->cgrp = ((void*)0);
 }

 ctx->nr_events--;
 if (event->attr.inherit_stat)
  ctx->nr_stat--;

 list_del_rcu(&event->event_entry);

 if (event->group_leader == event)
  list_del_init(&event->group_entry);

 update_group_times(event);
 if (event->state > PERF_EVENT_STATE_OFF)
  event->state = PERF_EVENT_STATE_OFF;
}
