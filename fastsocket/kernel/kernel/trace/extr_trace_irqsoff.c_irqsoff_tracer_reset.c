
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int TRACE_ITER_LATENCY_FMT ;
 int save_lat_flag ;
 int stop_irqsoff_tracer (struct trace_array*) ;
 int trace_flags ;

__attribute__((used)) static void irqsoff_tracer_reset(struct trace_array *tr)
{
 stop_irqsoff_tracer(tr);

 if (!save_lat_flag)
  trace_flags &= ~TRACE_ITER_LATENCY_FMT;
}
