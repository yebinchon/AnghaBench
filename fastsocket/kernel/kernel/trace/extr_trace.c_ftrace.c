
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int disabled; } ;
struct trace_array {int dummy; } ;


 int atomic_read (int *) ;
 scalar_t__ likely (int) ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;

void
ftrace(struct trace_array *tr, struct trace_array_cpu *data,
       unsigned long ip, unsigned long parent_ip, unsigned long flags,
       int pc)
{
 if (likely(!atomic_read(&data->disabled)))
  trace_function(tr, ip, parent_ip, flags, pc);
}
