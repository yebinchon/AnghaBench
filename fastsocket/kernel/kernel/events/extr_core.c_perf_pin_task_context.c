
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; int pin_count; } ;


 struct perf_event_context* perf_lock_task_context (struct task_struct*,int,unsigned long*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct perf_event_context *
perf_pin_task_context(struct task_struct *task, int ctxn)
{
 struct perf_event_context *ctx;
 unsigned long flags;

 ctx = perf_lock_task_context(task, ctxn, &flags);
 if (ctx) {
  ++ctx->pin_count;
  spin_unlock_irqrestore(&ctx->lock, flags);
 }
 return ctx;
}
