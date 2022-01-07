
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lap_cb {int idle_timer; } ;


 int del_timer (int *) ;

void irlmp_stop_idle_timer(struct lap_cb *self)
{

 del_timer(&self->idle_timer);
}
