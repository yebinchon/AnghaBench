
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ delayed_work_pending (int *) ;
 int jiffies ;
 int rfkill_last_scheduled ;
 int rfkill_op_work ;
 int rfkill_ratelimit (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void rfkill_schedule_ratelimited(void)
{
 if (delayed_work_pending(&rfkill_op_work))
  return;
 schedule_delayed_work(&rfkill_op_work,
         rfkill_ratelimit(rfkill_last_scheduled));
 rfkill_last_scheduled = jiffies;
}
