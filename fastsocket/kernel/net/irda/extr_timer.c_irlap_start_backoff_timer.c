
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irlap_cb {int backoff_timer; } ;


 int irda_start_timer (int *,int,void*,int ) ;
 int irlap_backoff_timer_expired ;

void irlap_start_backoff_timer(struct irlap_cb *self, int timeout)
{
 irda_start_timer(&self->backoff_timer, timeout, (void *) self,
    irlap_backoff_timer_expired);
}
