
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int state; int tx_queue; int (* state_change ) (struct rfcomm_dlc*,int) ;int flags; int dlci; struct rfcomm_session* session; } ;


 int BT_CLOSED ;




 int BT_DBG (char*,struct rfcomm_dlc*,int,int ,int,struct rfcomm_session*) ;
 int BT_DISCONN ;

 int RFCOMM_AUTH_REJECT ;
 int RFCOMM_DEFER_SETUP ;
 int RFCOMM_DISC_TIMEOUT ;
 int RFCOMM_SCHED_AUTH ;
 int rfcomm_dlc_clear_timer (struct rfcomm_dlc*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_set_timer (struct rfcomm_dlc*,int) ;
 int rfcomm_dlc_unlink (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_queue_disc (struct rfcomm_dlc*) ;
 int rfcomm_schedule (int ) ;
 int rfcomm_send_disc (struct rfcomm_session*,int ) ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (int *) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct rfcomm_dlc*,int) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int __rfcomm_dlc_close(struct rfcomm_dlc *d, int err)
{
 struct rfcomm_session *s = d->session;
 if (!s)
  return 0;

 BT_DBG("dlc %p state %ld dlci %d err %d session %p",
   d, d->state, d->dlci, err, s);

 switch (d->state) {
 case 131:
 case 132:
  if (test_and_clear_bit(RFCOMM_DEFER_SETUP, &d->flags)) {
   set_bit(RFCOMM_AUTH_REJECT, &d->flags);
   rfcomm_schedule(RFCOMM_SCHED_AUTH);
   break;
  }


 case 129:
  d->state = BT_DISCONN;
  if (skb_queue_empty(&d->tx_queue)) {
   rfcomm_send_disc(s, d->dlci);
   rfcomm_dlc_set_timer(d, RFCOMM_DISC_TIMEOUT);
  } else {
   rfcomm_queue_disc(d);
   rfcomm_dlc_set_timer(d, RFCOMM_DISC_TIMEOUT * 2);
  }
  break;

 case 128:
 case 130:
  if (test_and_clear_bit(RFCOMM_DEFER_SETUP, &d->flags)) {
   set_bit(RFCOMM_AUTH_REJECT, &d->flags);
   rfcomm_schedule(RFCOMM_SCHED_AUTH);
   break;
  }


 default:
  rfcomm_dlc_clear_timer(d);

  rfcomm_dlc_lock(d);
  d->state = BT_CLOSED;
  d->state_change(d, err);
  rfcomm_dlc_unlock(d);

  skb_queue_purge(&d->tx_queue);
  rfcomm_dlc_unlink(d);
 }

 return 0;
}
