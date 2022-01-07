
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; scalar_t__ is_active; int mutex; struct task_struct* task; } ;
struct perf_event {int cpu; struct perf_event_context* ctx; } ;


 int __perf_install_in_context ;
 int add_event_to_ctx (struct perf_event*,struct perf_event_context*) ;
 int cpu_function_call (int,int ,struct perf_event*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_function_call (struct task_struct*,int ,struct perf_event*) ;

__attribute__((used)) static void
perf_install_in_context(struct perf_event_context *ctx,
   struct perf_event *event,
   int cpu)
{
 struct task_struct *task = ctx->task;

 lockdep_assert_held(&ctx->mutex);

 event->ctx = ctx;
 if (event->cpu != -1)
  event->cpu = cpu;

 if (!task) {




  cpu_function_call(cpu, __perf_install_in_context, event);
  return;
 }

retry:
 if (!task_function_call(task, __perf_install_in_context, event))
  return;

 spin_lock_irq(&ctx->lock);




 if (ctx->is_active) {
  spin_unlock_irq(&ctx->lock);
  goto retry;
 }





 add_event_to_ctx(event, ctx);
 spin_unlock_irq(&ctx->lock);
}
