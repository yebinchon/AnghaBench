
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_dlc {int flags; int v24_sig; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,int ) ;
 int RFCOMM_MSC_PENDING ;
 int RFCOMM_RX_THROTTLED ;
 int RFCOMM_SCHED_TX ;
 int RFCOMM_V24_FC ;
 int rfcomm_schedule (int ) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int rfcomm_dlc_set_modem_status(struct rfcomm_dlc *d, u8 v24_sig)
{
 BT_DBG("dlc %p state %ld v24_sig 0x%x",
   d, d->state, v24_sig);

 if (test_bit(RFCOMM_RX_THROTTLED, &d->flags))
  v24_sig |= RFCOMM_V24_FC;
 else
  v24_sig &= ~RFCOMM_V24_FC;

 d->v24_sig = v24_sig;

 if (!test_and_set_bit(RFCOMM_MSC_PENDING, &d->flags))
  rfcomm_schedule(RFCOMM_SCHED_TX);

 return 0;
}
