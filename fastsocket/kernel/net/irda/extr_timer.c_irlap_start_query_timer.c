
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irlap_cb {int query_timer; } ;


 int HZ ;
 int SMALLBUSY_TIMEOUT ;
 int XIDEXTRA_TIMEOUT ;
 int irda_start_timer (int *,int,void*,int ) ;
 int irlap_query_timer_expired ;
 int sysctl_slot_timeout ;

void irlap_start_query_timer(struct irlap_cb *self, int S, int s)
{
 int timeout;
 timeout = ((sysctl_slot_timeout * HZ / 1000) * (S - s)
     + XIDEXTRA_TIMEOUT + SMALLBUSY_TIMEOUT);




 irda_start_timer( &self->query_timer, timeout, (void *) self,
     irlap_query_timer_expired);
}
