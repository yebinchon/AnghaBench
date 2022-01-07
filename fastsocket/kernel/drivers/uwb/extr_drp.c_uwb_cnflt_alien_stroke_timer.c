
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_cnflt_alien {int timer; } ;


 unsigned int UWB_MAX_LOST_BEACONS ;
 unsigned int UWB_SUPERFRAME_LENGTH_US ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static void uwb_cnflt_alien_stroke_timer(struct uwb_cnflt_alien *cnflt)
{
 unsigned timeout_us = UWB_MAX_LOST_BEACONS * UWB_SUPERFRAME_LENGTH_US;
 mod_timer(&cnflt->timer, jiffies + usecs_to_jiffies(timeout_us));
}
