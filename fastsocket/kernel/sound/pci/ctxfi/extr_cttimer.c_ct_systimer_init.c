
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer_instance {int timer; } ;


 int ct_systimer_callback ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static void ct_systimer_init(struct ct_timer_instance *ti)
{
 setup_timer(&ti->timer, ct_systimer_callback,
      (unsigned long)ti);
}
