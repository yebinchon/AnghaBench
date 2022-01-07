
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsap_cb {int watchdog_timer; } ;


 int irda_start_timer (int *,int,void*,int ) ;
 int irlmp_watchdog_timer_expired ;

void irlmp_start_watchdog_timer(struct lsap_cb *self, int timeout)
{
 irda_start_timer(&self->watchdog_timer, timeout, (void *) self,
    irlmp_watchdog_timer_expired);
}
