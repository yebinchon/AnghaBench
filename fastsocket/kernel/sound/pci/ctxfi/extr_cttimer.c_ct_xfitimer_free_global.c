
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer {int dummy; } ;


 int ct_xfitimer_irq_stop (struct ct_timer*) ;

__attribute__((used)) static void ct_xfitimer_free_global(struct ct_timer *atimer)
{
 ct_xfitimer_irq_stop(atimer);
}
