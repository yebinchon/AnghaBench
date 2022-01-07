
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {int (* init ) (struct trace_array*) ;} ;
struct trace_array {int dummy; } ;


 int stub1 (struct trace_array*) ;
 int tracing_reset_online_cpus (struct trace_array*) ;

int tracer_init(struct tracer *t, struct trace_array *tr)
{
 tracing_reset_online_cpus(tr);
 return t->init(tr);
}
