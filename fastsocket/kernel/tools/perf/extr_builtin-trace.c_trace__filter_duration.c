
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {double duration_filter; } ;


 double NSEC_PER_MSEC ;

__attribute__((used)) static bool trace__filter_duration(struct trace *trace, double t)
{
 return t < (trace->duration_filter * NSEC_PER_MSEC);
}
