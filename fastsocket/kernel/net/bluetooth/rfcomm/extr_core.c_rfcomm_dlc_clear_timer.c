
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int timer; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 scalar_t__ del_timer (int *) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void rfcomm_dlc_clear_timer(struct rfcomm_dlc *d)
{
 BT_DBG("dlc %p state %ld", d, d->state);

 if (timer_pending(&d->timer) && del_timer(&d->timer))
  rfcomm_dlc_put(d);
}
