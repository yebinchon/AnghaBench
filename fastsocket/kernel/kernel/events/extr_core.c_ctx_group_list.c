
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct perf_event_context {struct list_head flexible_groups; struct list_head pinned_groups; } ;
struct TYPE_2__ {scalar_t__ pinned; } ;
struct perf_event {TYPE_1__ attr; } ;



__attribute__((used)) static struct list_head *
ctx_group_list(struct perf_event *event, struct perf_event_context *ctx)
{
 if (event->attr.pinned)
  return &ctx->pinned_groups;
 else
  return &ctx->flexible_groups;
}
