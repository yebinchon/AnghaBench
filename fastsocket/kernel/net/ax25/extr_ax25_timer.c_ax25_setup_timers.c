
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idletimer; int t3timer; int t2timer; int t1timer; int timer; } ;
typedef TYPE_1__ ax25_cb ;


 int ax25_heartbeat_expiry ;
 int ax25_idletimer_expiry ;
 int ax25_t1timer_expiry ;
 int ax25_t2timer_expiry ;
 int ax25_t3timer_expiry ;
 int setup_timer (int *,int ,unsigned long) ;

void ax25_setup_timers(ax25_cb *ax25)
{
 setup_timer(&ax25->timer, ax25_heartbeat_expiry, (unsigned long)ax25);
 setup_timer(&ax25->t1timer, ax25_t1timer_expiry, (unsigned long)ax25);
 setup_timer(&ax25->t2timer, ax25_t2timer_expiry, (unsigned long)ax25);
 setup_timer(&ax25->t3timer, ax25_t3timer_expiry, (unsigned long)ax25);
 setup_timer(&ax25->idletimer, ax25_idletimer_expiry,
      (unsigned long)ax25);
}
