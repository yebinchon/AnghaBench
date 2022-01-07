
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dirty_writeback_interval ;
 unsigned long jiffies ;
 int mod_timer (int *,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int round_jiffies_up (unsigned long) ;
 int sync_supers_timer ;

void bdi_arm_supers_timer(void)
{
 unsigned long next;

 if (!dirty_writeback_interval)
  return;

 next = msecs_to_jiffies(dirty_writeback_interval * 10) + jiffies;
 mod_timer(&sync_supers_timer, round_jiffies_up(next));
}
