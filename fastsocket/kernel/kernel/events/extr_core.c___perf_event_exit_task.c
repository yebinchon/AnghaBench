
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; } ;
struct perf_event {scalar_t__ parent; } ;


 int free_event (struct perf_event*) ;
 int perf_group_detach (struct perf_event*) ;
 int perf_remove_from_context (struct perf_event*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sync_child_event (struct perf_event*,struct task_struct*) ;

__attribute__((used)) static void
__perf_event_exit_task(struct perf_event *child_event,
    struct perf_event_context *child_ctx,
    struct task_struct *child)
{
 if (child_event->parent) {
  spin_lock_irq(&child_ctx->lock);
  perf_group_detach(child_event);
  spin_unlock_irq(&child_ctx->lock);
 }

 perf_remove_from_context(child_event);






 if (child_event->parent) {
  sync_child_event(child_event, child);
  free_event(child_event);
 }
}
