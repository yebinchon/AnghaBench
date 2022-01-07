
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int cycle_t ;
struct TYPE_2__ {int buffer; } ;


 TYPE_1__ global_trace ;
 int ring_buffer_normalize_time_stamp (int ,int,int *) ;
 int ring_buffer_time_stamp (int ,int) ;
 int trace_clock_local () ;

cycle_t ftrace_now(int cpu)
{
 u64 ts;


 if (!global_trace.buffer)
  return trace_clock_local();

 ts = ring_buffer_time_stamp(global_trace.buffer, cpu);
 ring_buffer_normalize_time_stamp(global_trace.buffer, cpu, &ts);

 return ts;
}
