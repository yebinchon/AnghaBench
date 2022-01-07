
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int timer; int state; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 scalar_t__ del_timer (int *) ;
 int rfcomm_session_put (struct rfcomm_session*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void rfcomm_session_clear_timer(struct rfcomm_session *s)
{
 BT_DBG("session %p state %ld", s, s->state);

 if (timer_pending(&s->timer) && del_timer(&s->timer))
  rfcomm_session_put(s);
}
