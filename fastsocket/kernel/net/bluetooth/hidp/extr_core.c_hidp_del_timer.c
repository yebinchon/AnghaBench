
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {scalar_t__ idle_to; int timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void hidp_del_timer(struct hidp_session *session)
{
 if (session->idle_to > 0)
  del_timer(&session->timer);
}
