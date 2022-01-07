
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rfcomm_session {scalar_t__ state; int initiator; } ;
struct rfcomm_dlc {scalar_t__ state; int addr; scalar_t__ dlci; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_session*,scalar_t__,scalar_t__) ;
 scalar_t__ BT_OPEN ;
 int __addr (int ,scalar_t__) ;
 scalar_t__ __srv_channel (scalar_t__) ;
 int rfcomm_check_accept (struct rfcomm_dlc*) ;
 scalar_t__ rfcomm_connect_ind (struct rfcomm_session*,scalar_t__,struct rfcomm_dlc**) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_dlc_link (struct rfcomm_session*,struct rfcomm_dlc*) ;
 int rfcomm_process_connect (struct rfcomm_session*) ;
 int rfcomm_send_dm (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_send_ua (struct rfcomm_session*,int ) ;

__attribute__((used)) static int rfcomm_recv_sabm(struct rfcomm_session *s, u8 dlci)
{
 struct rfcomm_dlc *d;
 u8 channel;

 BT_DBG("session %p state %ld dlci %d", s, s->state, dlci);

 if (!dlci) {
  rfcomm_send_ua(s, 0);

  if (s->state == BT_OPEN) {
   s->state = BT_CONNECTED;
   rfcomm_process_connect(s);
  }
  return 0;
 }


 d = rfcomm_dlc_get(s, dlci);
 if (d) {
  if (d->state == BT_OPEN) {

   rfcomm_check_accept(d);
  }
  return 0;
 }


 channel = __srv_channel(dlci);
 if (rfcomm_connect_ind(s, channel, &d)) {
  d->dlci = dlci;
  d->addr = __addr(s->initiator, dlci);
  rfcomm_dlc_link(s, d);

  rfcomm_check_accept(d);
 } else {
  rfcomm_send_dm(s, dlci);
 }

 return 0;
}
