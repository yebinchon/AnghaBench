
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* set_timer_tick ) (struct hw*,int ) ;int (* set_timer_irq ) (struct hw*,int ) ;} ;
struct ct_timer {scalar_t__ running; TYPE_1__* atc; } ;
struct TYPE_2__ {struct hw* hw; } ;


 int stub1 (struct hw*,int ) ;
 int stub2 (struct hw*,int ) ;

__attribute__((used)) static void ct_xfitimer_irq_stop(struct ct_timer *atimer)
{
 if (atimer->running) {
  struct hw *hw = atimer->atc->hw;
  hw->set_timer_irq(hw, 0);
  hw->set_timer_tick(hw, 0);
  atimer->running = 0;
 }
}
