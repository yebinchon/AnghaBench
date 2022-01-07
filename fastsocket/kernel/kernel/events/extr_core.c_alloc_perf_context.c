
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pmu {int dummy; } ;
struct perf_event_context {struct pmu* pmu; struct task_struct* task; } ;


 int GFP_KERNEL ;
 int __perf_event_init_context (struct perf_event_context*) ;
 int get_task_struct (struct task_struct*) ;
 struct perf_event_context* kzalloc (int,int ) ;

__attribute__((used)) static struct perf_event_context *
alloc_perf_context(struct pmu *pmu, struct task_struct *task)
{
 struct perf_event_context *ctx;

 ctx = kzalloc(sizeof(struct perf_event_context), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 __perf_event_init_context(ctx);
 if (task) {
  ctx->task = task;
  get_task_struct(task);
 }
 ctx->pmu = pmu;

 return ctx;
}
