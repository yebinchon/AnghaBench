
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int debug_hrtimer_activate (struct hrtimer*) ;
 int trace_hrtimer_start (struct hrtimer*) ;

__attribute__((used)) static inline void debug_activate(struct hrtimer *timer)
{
 debug_hrtimer_activate(timer);
 trace_hrtimer_start(timer);
}
