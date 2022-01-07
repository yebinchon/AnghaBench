
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int mibII_idle ;
 int mibII_poll_ticks ;
 int * mibII_poll_timer ;
 int module ;
 int syslog (int ,char*,int) ;
 int * timer_start_repeat (int,int,int ,int *,int ) ;
 int timer_stop (int *) ;

void
mibif_restart_mibII_poll_timer(void)
{
 if (mibII_poll_timer != ((void*)0))
  timer_stop(mibII_poll_timer);

 if ((mibII_poll_timer = timer_start_repeat(mibII_poll_ticks * 10,
     mibII_poll_ticks * 10, mibII_idle, ((void*)0), module)) == ((void*)0))
  syslog(LOG_ERR, "timer_start(%u): %m", mibII_poll_ticks);
}
