
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ IF_Mbps (int) ;
 int LOG_ERR ;
 int * hc_update_timer ;
 int mibif_force_hc_update_interval ;
 int mibif_hc_update_interval ;
 scalar_t__ mibif_maxspeed ;
 int module ;
 int syslog (int ,char*,int) ;
 int * timer_start_repeat (int,int,int (*) (int *),int *,int ) ;
 int timer_stop (int *) ;
 int update_hc_counters (int *) ;

void
mibif_reset_hc_timer(void)
{
 u_int ticks;

 if ((ticks = mibif_force_hc_update_interval) == 0) {
  if (mibif_maxspeed <= IF_Mbps(10)) {

   ticks = 3000 * 100;
  } else if (mibif_maxspeed <= IF_Mbps(100)) {

   ticks = 300 * 100;
  } else if (mibif_maxspeed < IF_Mbps(622)) {

   ticks = 40 * 100;
  } else if (mibif_maxspeed <= IF_Mbps(1000)) {

   ticks = 20 * 100;
  } else {

   ticks = 100;
  }
 }

 if (ticks == mibif_hc_update_interval)
  return;

 if (hc_update_timer != ((void*)0)) {
  timer_stop(hc_update_timer);
  hc_update_timer = ((void*)0);
 }
 update_hc_counters(((void*)0));
 if ((hc_update_timer = timer_start_repeat(ticks, ticks,
     update_hc_counters, ((void*)0), module)) == ((void*)0)) {
  syslog(LOG_ERR, "timer_start(%u): %m", ticks);
  return;
 }
 mibif_hc_update_interval = ticks;
}
