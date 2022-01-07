
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * perf_event_ctxp; } ;
struct perf_event_context {int lock; int refcount; } ;


 int atomic_inc_not_zero (int *) ;
 struct perf_event_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct perf_event_context *
perf_lock_task_context(struct task_struct *task, int ctxn, unsigned long *flags)
{
 struct perf_event_context *ctx;

 rcu_read_lock();
retry:
 ctx = rcu_dereference(task->perf_event_ctxp[ctxn]);
 if (ctx) {
  spin_lock_irqsave(&ctx->lock, *flags);
  if (ctx != rcu_dereference(task->perf_event_ctxp[ctxn])) {
   spin_unlock_irqrestore(&ctx->lock, *flags);
   goto retry;
  }

  if (!atomic_inc_not_zero(&ctx->refcount)) {
   spin_unlock_irqrestore(&ctx->lock, *flags);
   ctx = ((void*)0);
  }
 }
 rcu_read_unlock();
 return ctx;
}
