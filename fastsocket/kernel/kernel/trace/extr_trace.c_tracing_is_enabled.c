
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tracer_enabled ;

int tracing_is_enabled(void)
{
 return tracer_enabled;
}
