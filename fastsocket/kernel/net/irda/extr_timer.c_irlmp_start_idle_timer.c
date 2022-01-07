
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lap_cb {int idle_timer; } ;


 int irda_start_timer (int *,int,void*,int ) ;
 int irlmp_idle_timer_expired ;

void irlmp_start_idle_timer(struct lap_cb *self, int timeout)
{
 irda_start_timer(&self->idle_timer, timeout, (void *) self,
    irlmp_idle_timer_expired);
}
