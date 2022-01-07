
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef int clockid_t ;


 int debug_hrtimer_init (struct hrtimer*) ;
 int trace_hrtimer_init (struct hrtimer*,int ,int) ;

__attribute__((used)) static inline void
debug_init(struct hrtimer *timer, clockid_t clockid,
    enum hrtimer_mode mode)
{
 debug_hrtimer_init(timer);
 trace_hrtimer_init(timer, clockid, mode);
}
