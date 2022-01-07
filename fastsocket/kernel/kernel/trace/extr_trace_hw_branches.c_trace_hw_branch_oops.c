
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ds_resume_bts_noirq (scalar_t__) ;
 int ds_suspend_bts_noirq (scalar_t__) ;
 int hw_branch_trace ;
 scalar_t__ this_tracer ;
 int trace_bts_cpu (int ) ;

void trace_hw_branch_oops(void)
{
 if (this_tracer) {
  ds_suspend_bts_noirq(this_tracer);
  trace_bts_cpu(hw_branch_trace);
  ds_resume_bts_noirq(this_tracer);
 }
}
