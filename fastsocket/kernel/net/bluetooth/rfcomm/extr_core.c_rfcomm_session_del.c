
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int state; int sock; int list; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_session*,int) ;
 int BT_LISTEN ;
 int THIS_MODULE ;
 int kfree (struct rfcomm_session*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int rfcomm_send_disc (struct rfcomm_session*,int ) ;
 int rfcomm_session_clear_timer (struct rfcomm_session*) ;
 int sock_release (int ) ;

__attribute__((used)) static void rfcomm_session_del(struct rfcomm_session *s)
{
 int state = s->state;

 BT_DBG("session %p state %ld", s, s->state);

 list_del(&s->list);

 if (state == BT_CONNECTED)
  rfcomm_send_disc(s, 0);

 rfcomm_session_clear_timer(s);
 sock_release(s->sock);
 kfree(s);

 if (state != BT_LISTEN)
  module_put(THIS_MODULE);
}
