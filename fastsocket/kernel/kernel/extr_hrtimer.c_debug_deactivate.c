
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int debug_hrtimer_deactivate (struct hrtimer*) ;
 int trace_hrtimer_cancel (struct hrtimer*) ;

__attribute__((used)) static inline void debug_deactivate(struct hrtimer *timer)
{
 debug_hrtimer_deactivate(timer);
 trace_hrtimer_cancel(timer);
}
