
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int mutex; int generation; int parent_ctx; int pmu; } ;
struct perf_event_attr {int dummy; } ;
struct perf_event {int mutex; int generation; int parent_ctx; int pmu; } ;
typedef int perf_overflow_handler_t ;


 struct perf_event_context* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct perf_event_context*) ;
 int PTR_ERR (struct perf_event_context*) ;
 int WARN_ON_ONCE (int ) ;
 struct perf_event_context* find_get_context (int ,struct task_struct*,int) ;
 int free_event (struct perf_event_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct perf_event_context* perf_event_alloc (struct perf_event_attr*,int,struct task_struct*,int *,int *,int ,void*) ;
 int perf_install_in_context (struct perf_event_context*,struct perf_event_context*,int) ;
 int perf_unpin_context (struct perf_event_context*) ;

struct perf_event *
perf_event_create_kernel_counter(struct perf_event_attr *attr, int cpu,
     struct task_struct *task,
     perf_overflow_handler_t overflow_handler,
     void *context)
{
 struct perf_event_context *ctx;
 struct perf_event *event;
 int err;





 event = perf_event_alloc(attr, cpu, task, ((void*)0), ((void*)0),
     overflow_handler, context);
 if (IS_ERR(event)) {
  err = PTR_ERR(event);
  goto err;
 }

 ctx = find_get_context(event->pmu, task, cpu);
 if (IS_ERR(ctx)) {
  err = PTR_ERR(ctx);
  goto err_free;
 }

 WARN_ON_ONCE(ctx->parent_ctx);
 mutex_lock(&ctx->mutex);
 perf_install_in_context(ctx, event, cpu);
 ++ctx->generation;
 perf_unpin_context(ctx);
 mutex_unlock(&ctx->mutex);

 return event;

err_free:
 free_event(event);
err:
 return ERR_PTR(err);
}
