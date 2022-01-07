
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct dummy_systimer_pcm {int frac_period_rest; int rate; TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void dummy_systimer_rearm(struct dummy_systimer_pcm *dpcm)
{
 dpcm->timer.expires = jiffies +
  (dpcm->frac_period_rest + dpcm->rate - 1) / dpcm->rate;
 add_timer(&dpcm->timer);
}
