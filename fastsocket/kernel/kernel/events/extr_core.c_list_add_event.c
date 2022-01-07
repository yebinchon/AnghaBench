
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int nr_stat; int nr_events; int pmu; int event_list; int nr_cgroups; } ;
struct TYPE_2__ {scalar_t__ inherit_stat; } ;
struct perf_event {int attach_state; TYPE_1__ attr; int event_entry; int group_entry; int group_flags; struct perf_event* group_leader; } ;
struct list_head {int dummy; } ;


 int PERF_ATTACH_CONTEXT ;
 int PERF_GROUP_SOFTWARE ;
 int WARN_ON_ONCE (int) ;
 struct list_head* ctx_group_list (struct perf_event*,struct perf_event_context*) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 scalar_t__ is_software_event (struct perf_event*) ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int perf_pmu_rotate_start (int ) ;

__attribute__((used)) static void
list_add_event(struct perf_event *event, struct perf_event_context *ctx)
{
 WARN_ON_ONCE(event->attach_state & PERF_ATTACH_CONTEXT);
 event->attach_state |= PERF_ATTACH_CONTEXT;






 if (event->group_leader == event) {
  struct list_head *list;

  if (is_software_event(event))
   event->group_flags |= PERF_GROUP_SOFTWARE;

  list = ctx_group_list(event, ctx);
  list_add_tail(&event->group_entry, list);
 }

 if (is_cgroup_event(event))
  ctx->nr_cgroups++;

 list_add_rcu(&event->event_entry, &ctx->event_list);
 if (!ctx->nr_events)
  perf_pmu_rotate_start(ctx->pmu);
 ctx->nr_events++;
 if (event->attr.inherit_stat)
  ctx->nr_stat++;
}
