
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; struct task_struct* task; } ;
struct perf_event {scalar_t__ state; int cpu; struct perf_event_context* ctx; } ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 int __perf_event_disable ;
 int cpu_function_call (int ,int ,struct perf_event*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_function_call (struct task_struct*,int ,struct perf_event*) ;
 int update_group_times (struct perf_event*) ;

void perf_event_disable(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;
 struct task_struct *task = ctx->task;

 if (!task) {



  cpu_function_call(event->cpu, __perf_event_disable, event);
  return;
 }

retry:
 if (!task_function_call(task, __perf_event_disable, event))
  return;

 spin_lock_irq(&ctx->lock);



 if (event->state == PERF_EVENT_STATE_ACTIVE) {
  spin_unlock_irq(&ctx->lock);




  task = ctx->task;
  goto retry;
 }





 if (event->state == PERF_EVENT_STATE_INACTIVE) {
  update_group_times(event);
  event->state = PERF_EVENT_STATE_OFF;
 }
 spin_unlock_irq(&ctx->lock);
}
