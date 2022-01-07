
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int dlcs; } ;
struct rfcomm_dlc {struct rfcomm_session* session; int list; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,struct rfcomm_session*) ;
 int list_add (int *,int *) ;
 int rfcomm_dlc_hold (struct rfcomm_dlc*) ;
 int rfcomm_session_clear_timer (struct rfcomm_session*) ;
 int rfcomm_session_hold (struct rfcomm_session*) ;

__attribute__((used)) static void rfcomm_dlc_link(struct rfcomm_session *s, struct rfcomm_dlc *d)
{
 BT_DBG("dlc %p session %p", d, s);

 rfcomm_session_hold(s);

 rfcomm_session_clear_timer(s);
 rfcomm_dlc_hold(d);
 list_add(&d->list, &s->dlcs);
 d->session = s;
}
