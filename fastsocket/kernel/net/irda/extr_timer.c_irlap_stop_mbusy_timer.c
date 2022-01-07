
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irlap_cb {scalar_t__ state; int media_busy_timer; } ;


 scalar_t__ LAP_NDM ;
 int MEDIA_BUSY_TIMER_EXPIRED ;
 int del_timer (int *) ;
 int irlap_do_event (struct irlap_cb*,int ,int *,int *) ;

void irlap_stop_mbusy_timer(struct irlap_cb *self)
{

 del_timer(&self->media_busy_timer);






 if (self->state == LAP_NDM)
  irlap_do_event(self, MEDIA_BUSY_TIMER_EXPIRED, ((void*)0), ((void*)0));
}
