
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int flags; int state; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 int RFCOMM_SCHED_TIMEO ;
 int RFCOMM_TIMED_OUT ;
 int rfcomm_schedule (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rfcomm_session_timeout(unsigned long arg)
{
 struct rfcomm_session *s = (void *) arg;

 BT_DBG("session %p state %ld", s, s->state);

 set_bit(RFCOMM_TIMED_OUT, &s->flags);
 rfcomm_schedule(RFCOMM_SCHED_TIMEO);
}
