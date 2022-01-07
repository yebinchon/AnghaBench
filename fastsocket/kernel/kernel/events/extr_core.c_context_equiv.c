
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ parent_ctx; scalar_t__ parent_gen; int pin_count; } ;



__attribute__((used)) static int context_equiv(struct perf_event_context *ctx1,
    struct perf_event_context *ctx2)
{
 return ctx1->parent_ctx && ctx1->parent_ctx == ctx2->parent_ctx
  && ctx1->parent_gen == ctx2->parent_gen
  && !ctx1->pin_count && !ctx2->pin_count;
}
