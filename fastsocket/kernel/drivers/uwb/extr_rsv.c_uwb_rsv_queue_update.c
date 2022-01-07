
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int rsv_update_work; int rsv_workq; } ;


 unsigned long UWB_MAS_LENGTH_US ;
 unsigned long UWB_MAS_PER_ZONE ;
 int queue_delayed_work (int ,int *,int ) ;
 int usecs_to_jiffies (unsigned long) ;

void uwb_rsv_queue_update(struct uwb_rc *rc)
{
 unsigned long delay_us = UWB_MAS_LENGTH_US * UWB_MAS_PER_ZONE;

 queue_delayed_work(rc->rsv_workq, &rc->rsv_update_work, usecs_to_jiffies(delay_us));
}
