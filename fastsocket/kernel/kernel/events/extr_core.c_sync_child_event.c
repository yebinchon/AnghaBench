
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ inherit_stat; } ;
struct perf_event {int child_mutex; int child_list; TYPE_1__* ctx; int child_total_time_running; int total_time_running; int child_total_time_enabled; int total_time_enabled; int child_count; TYPE_2__ attr; struct perf_event* parent; } ;
struct TYPE_3__ {int parent_ctx; } ;


 int WARN_ON_ONCE (int ) ;
 int atomic64_add (int ,int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_event_count (struct perf_event*) ;
 int perf_event_read_event (struct perf_event*,struct task_struct*) ;
 int put_event (struct perf_event*) ;

__attribute__((used)) static void sync_child_event(struct perf_event *child_event,
          struct task_struct *child)
{
 struct perf_event *parent_event = child_event->parent;
 u64 child_val;

 if (child_event->attr.inherit_stat)
  perf_event_read_event(child_event, child);

 child_val = perf_event_count(child_event);




 atomic64_add(child_val, &parent_event->child_count);
 atomic64_add(child_event->total_time_enabled,
       &parent_event->child_total_time_enabled);
 atomic64_add(child_event->total_time_running,
       &parent_event->child_total_time_running);




 WARN_ON_ONCE(parent_event->ctx->parent_ctx);
 mutex_lock(&parent_event->child_mutex);
 list_del_init(&child_event->child_list);
 mutex_unlock(&parent_event->child_mutex);





 put_event(parent_event);
}
