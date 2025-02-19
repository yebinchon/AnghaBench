
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int flags; int v24_sig; int cfc; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 int RFCOMM_MSC_PENDING ;
 int RFCOMM_SCHED_TX ;
 int RFCOMM_V24_FC ;
 int rfcomm_schedule (int ) ;
 int set_bit (int ,int *) ;

void __rfcomm_dlc_throttle(struct rfcomm_dlc *d)
{
 BT_DBG("dlc %p state %ld", d, d->state);

 if (!d->cfc) {
  d->v24_sig |= RFCOMM_V24_FC;
  set_bit(RFCOMM_MSC_PENDING, &d->flags);
 }
 rfcomm_schedule(RFCOMM_SCHED_TX);
}
