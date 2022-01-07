
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cycle_t ;


 scalar_t__ tracing_max_latency ;
 scalar_t__ tracing_thresh ;

__attribute__((used)) static int report_latency(cycle_t delta)
{
 if (tracing_thresh) {
  if (delta < tracing_thresh)
   return 0;
 } else {
  if (delta <= tracing_max_latency)
   return 0;
 }
 return 1;
}
