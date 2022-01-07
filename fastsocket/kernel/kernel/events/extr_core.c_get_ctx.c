
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int refcount; } ;


 int WARN_ON (int) ;
 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static void get_ctx(struct perf_event_context *ctx)
{
 WARN_ON(!atomic_inc_not_zero(&ctx->refcount));
}
