
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SLOW_WORK_CULL_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int slow_work_cull_timer ;

__attribute__((used)) static void slow_work_schedule_cull(void)
{
 mod_timer(&slow_work_cull_timer,
    round_jiffies(jiffies + SLOW_WORK_CULL_TIMEOUT));
}
