
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef int clockid_t ;


 int __hrtimer_init (struct hrtimer*,int ,int) ;
 int debug_init (struct hrtimer*,int ,int) ;

void hrtimer_init(struct hrtimer *timer, clockid_t clock_id,
    enum hrtimer_mode mode)
{
 debug_init(timer, clock_id, mode);
 __hrtimer_init(timer, clock_id, mode);
}
