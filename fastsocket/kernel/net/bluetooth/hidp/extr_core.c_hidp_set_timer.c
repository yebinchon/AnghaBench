
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int idle_to; int timer; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void hidp_set_timer(struct hidp_session *session)
{
 if (session->idle_to > 0)
  mod_timer(&session->timer, jiffies + HZ * session->idle_to);
}
