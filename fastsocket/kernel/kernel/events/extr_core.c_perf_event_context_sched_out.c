
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct perf_event_context** perf_event_ctxp; } ;
struct perf_event_context {int lock; struct task_struct* task; int parent_ctx; } ;
struct perf_cpu_context {int * task_ctx; } ;


 int EVENT_ALL ;
 int SINGLE_DEPTH_NESTING ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 scalar_t__ context_equiv (struct perf_event_context*,struct perf_event_context*) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int ) ;
 scalar_t__ likely (int) ;
 int perf_event_sync_stat (struct perf_event_context*,struct perf_event_context*) ;
 struct perf_event_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void perf_event_context_sched_out(struct task_struct *task, int ctxn,
      struct task_struct *next)
{
 struct perf_event_context *ctx = task->perf_event_ctxp[ctxn];
 struct perf_event_context *next_ctx;
 struct perf_event_context *parent;
 struct perf_cpu_context *cpuctx;
 int do_switch = 1;

 if (likely(!ctx))
  return;

 cpuctx = __get_cpu_context(ctx);
 if (!cpuctx->task_ctx)
  return;

 rcu_read_lock();
 parent = rcu_dereference(ctx->parent_ctx);
 next_ctx = next->perf_event_ctxp[ctxn];
 if (parent && next_ctx &&
     rcu_dereference(next_ctx->parent_ctx) == parent) {
  spin_lock(&ctx->lock);
  spin_lock_nested(&next_ctx->lock, SINGLE_DEPTH_NESTING);
  if (context_equiv(ctx, next_ctx)) {




   task->perf_event_ctxp[ctxn] = next_ctx;
   next->perf_event_ctxp[ctxn] = ctx;
   ctx->task = next;
   next_ctx->task = task;
   do_switch = 0;

   perf_event_sync_stat(ctx, next_ctx);
  }
  spin_unlock(&next_ctx->lock);
  spin_unlock(&ctx->lock);
 }
 rcu_read_unlock();

 if (do_switch) {
  spin_lock(&ctx->lock);
  ctx_sched_out(ctx, cpuctx, EVENT_ALL);
  cpuctx->task_ctx = ((void*)0);
  spin_unlock(&ctx->lock);
 }
}
