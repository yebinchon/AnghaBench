
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rfcomm_session {int initiator; int state; } ;
struct rfcomm_pn {scalar_t__ dlci; } ;
struct rfcomm_dlc {int state; int addr; scalar_t__ dlci; } ;



 int BT_CONNECT ;
 int BT_DBG (char*,struct rfcomm_session*,int ,scalar_t__) ;
 int BT_OPEN ;
 int __addr (int ,scalar_t__) ;
 scalar_t__ __srv_channel (scalar_t__) ;
 int rfcomm_apply_pn (struct rfcomm_dlc*,int,struct rfcomm_pn*) ;
 scalar_t__ rfcomm_connect_ind (struct rfcomm_session*,scalar_t__,struct rfcomm_dlc**) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_dlc_link (struct rfcomm_session*,struct rfcomm_dlc*) ;
 int rfcomm_send_dm (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_send_pn (struct rfcomm_session*,int ,struct rfcomm_dlc*) ;
 int rfcomm_send_sabm (struct rfcomm_session*,scalar_t__) ;

__attribute__((used)) static int rfcomm_recv_pn(struct rfcomm_session *s, int cr, struct sk_buff *skb)
{
 struct rfcomm_pn *pn = (void *) skb->data;
 struct rfcomm_dlc *d;
 u8 dlci = pn->dlci;

 BT_DBG("session %p state %ld dlci %d", s, s->state, dlci);

 if (!dlci)
  return 0;

 d = rfcomm_dlc_get(s, dlci);
 if (d) {
  if (cr) {

   rfcomm_apply_pn(d, cr, pn);
   rfcomm_send_pn(s, 0, d);
  } else {

   switch (d->state) {
   case 128:
    rfcomm_apply_pn(d, cr, pn);

    d->state = BT_CONNECT;
    rfcomm_send_sabm(s, d->dlci);
    break;
   }
  }
 } else {
  u8 channel = __srv_channel(dlci);

  if (!cr)
   return 0;



  if (rfcomm_connect_ind(s, channel, &d)) {
   d->dlci = dlci;
   d->addr = __addr(s->initiator, dlci);
   rfcomm_dlc_link(s, d);

   rfcomm_apply_pn(d, cr, pn);

   d->state = BT_OPEN;
   rfcomm_send_pn(s, 0, d);
  } else {
   rfcomm_send_dm(s, dlci);
  }
 }
 return 0;
}
