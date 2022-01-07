
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {int id; } ;


 int LIST_REMOVE (struct timer*,int ) ;
 int LOG_ERR ;
 int evClearTimer (int ,int ) ;
 int evctx ;
 int exit (int) ;
 int free (void*) ;
 int link ;
 int poll_stop_timer (int ) ;
 int syslog (int ,char*) ;

void
timer_stop(void *p)
{
 struct timer *tp = p;

 LIST_REMOVE(tp, link);



 if (evClearTimer(evctx, tp->id) == -1) {
  syslog(LOG_ERR, "cannot stop timer: %m");
  exit(1);
 }

 free(p);
}
