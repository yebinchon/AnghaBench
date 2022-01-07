
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int rcu_head; scalar_t__ task; struct perf_event_context* parent_ctx; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int free_ctx ;
 int put_task_struct (scalar_t__) ;

__attribute__((used)) static void put_ctx(struct perf_event_context *ctx)
{
 if (atomic_dec_and_test(&ctx->refcount)) {
  if (ctx->parent_ctx)
   put_ctx(ctx->parent_ctx);
  if (ctx->task)
   put_task_struct(ctx->task);
  call_rcu(&ctx->rcu_head, free_ctx);
 }
}
