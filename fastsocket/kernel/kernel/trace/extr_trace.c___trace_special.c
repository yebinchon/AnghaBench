
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ftrace_trace_special (void*,unsigned long,unsigned long,unsigned long,int ) ;
 int preempt_count () ;

void
__trace_special(void *__tr, void *__data,
  unsigned long arg1, unsigned long arg2, unsigned long arg3)
{
 ftrace_trace_special(__tr, arg1, arg2, arg3, preempt_count());
}
