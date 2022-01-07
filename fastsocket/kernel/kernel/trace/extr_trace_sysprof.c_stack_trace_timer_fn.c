
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_RESTART ;
 int get_irq_regs () ;
 int hrtimer_forward_now (struct hrtimer*,int ) ;
 int ns_to_ktime (int ) ;
 int sample_period ;
 int smp_processor_id () ;
 int timer_notify (int ,int ) ;

__attribute__((used)) static enum hrtimer_restart stack_trace_timer_fn(struct hrtimer *hrtimer)
{

 timer_notify(get_irq_regs(), smp_processor_id());

 hrtimer_forward_now(hrtimer, ns_to_ktime(sample_period));

 return HRTIMER_RESTART;
}
