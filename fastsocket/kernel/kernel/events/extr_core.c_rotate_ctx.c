
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int flexible_groups; int rotate_disable; } ;


 int list_rotate_left (int *) ;

__attribute__((used)) static void rotate_ctx(struct perf_event_context *ctx)
{




 if (!ctx->rotate_disable)
  list_rotate_left(&ctx->flexible_groups);
}
