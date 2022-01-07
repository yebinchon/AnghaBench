
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int terminate; } ;


 int atomic_inc (int *) ;
 int hidp_schedule (struct hidp_session*) ;

__attribute__((used)) static void hidp_idle_timeout(unsigned long arg)
{
 struct hidp_session *session = (struct hidp_session *) arg;

 atomic_inc(&session->terminate);
 hidp_schedule(session);
}
