
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {unsigned int (* get_wc ) (struct hw*) ;} ;
struct ct_timer {TYPE_1__* atc; } ;
struct TYPE_2__ {struct hw* hw; } ;


 unsigned int stub1 (struct hw*) ;

__attribute__((used)) static inline unsigned int ct_xfitimer_get_wc(struct ct_timer *atimer)
{
 struct hw *hw = atimer->atc->hw;
 return hw->get_wc(hw);
}
