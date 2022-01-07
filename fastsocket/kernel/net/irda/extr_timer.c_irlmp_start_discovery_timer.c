
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irlmp_cb {int discovery_timer; } ;


 int irda_start_timer (int *,int,void*,int ) ;
 int irlmp_discovery_timer_expired ;

void irlmp_start_discovery_timer(struct irlmp_cb *self, int timeout)
{
 irda_start_timer(&self->discovery_timer, timeout, (void *) self,
    irlmp_discovery_timer_expired);
}
