
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_msc {int v24_sig; int dlci; } ;
struct rfcomm_dlc {int remote_v24_sig; int mscex; int (* modem_status ) (struct rfcomm_dlc*,int) ;int flags; int cfc; } ;


 int BT_DBG (char*,int ,int,int) ;
 int RFCOMM_MSCEX_RX ;
 int RFCOMM_MSCEX_TX ;
 int RFCOMM_TX_THROTTLED ;
 int RFCOMM_V24_FC ;
 int __get_dlci (int ) ;
 int clear_bit (int ,int *) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,int ) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_send_msc (struct rfcomm_session*,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rfcomm_dlc*,int) ;

__attribute__((used)) static int rfcomm_recv_msc(struct rfcomm_session *s, int cr, struct sk_buff *skb)
{
 struct rfcomm_msc *msc = (void *) skb->data;
 struct rfcomm_dlc *d;
 u8 dlci = __get_dlci(msc->dlci);

 BT_DBG("dlci %d cr %d v24 0x%x", dlci, cr, msc->v24_sig);

 d = rfcomm_dlc_get(s, dlci);
 if (!d)
  return 0;

 if (cr) {
  if (msc->v24_sig & RFCOMM_V24_FC && !d->cfc)
   set_bit(RFCOMM_TX_THROTTLED, &d->flags);
  else
   clear_bit(RFCOMM_TX_THROTTLED, &d->flags);

  rfcomm_dlc_lock(d);

  d->remote_v24_sig = msc->v24_sig;

  if (d->modem_status)
   d->modem_status(d, msc->v24_sig);

  rfcomm_dlc_unlock(d);

  rfcomm_send_msc(s, 0, dlci, msc->v24_sig);

  d->mscex |= RFCOMM_MSCEX_RX;
 } else
  d->mscex |= RFCOMM_MSCEX_TX;

 return 0;
}
