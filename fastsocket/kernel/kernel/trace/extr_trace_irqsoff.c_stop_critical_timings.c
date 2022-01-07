
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALLER_ADDR0 ;
 int CALLER_ADDR1 ;
 scalar_t__ irq_trace () ;
 scalar_t__ preempt_trace () ;
 int stop_critical_timing (int ,int ) ;

void stop_critical_timings(void)
{
 if (preempt_trace() || irq_trace())
  stop_critical_timing(CALLER_ADDR0, CALLER_ADDR1);
}
