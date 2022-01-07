
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_gtk_context {int dummy; } ;


 int free (struct perf_gtk_context*) ;
 int perf_gtk__is_active_context (struct perf_gtk_context*) ;

int perf_gtk__deactivate_context(struct perf_gtk_context **ctx)
{
 if (!perf_gtk__is_active_context(*ctx))
  return -1;

 free(*ctx);
 *ctx = ((void*)0);
 return 0;
}
