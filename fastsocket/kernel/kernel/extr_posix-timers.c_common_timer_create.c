
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ real; } ;
struct k_itimer {int it_clock; TYPE_2__ it; } ;


 int hrtimer_init (int *,int ,int ) ;

__attribute__((used)) static int common_timer_create(struct k_itimer *new_timer)
{
 hrtimer_init(&new_timer->it.real.timer, new_timer->it_clock, 0);
 return 0;
}
