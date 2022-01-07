
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_stop_count ;

int is_tracing_stopped(void)
{
 return trace_stop_count;
}
