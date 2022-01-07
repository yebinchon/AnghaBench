
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_write_timeout_work; int hr_last_timeout_start; } ;


 int O2HB_MAX_WRITE_TIMEOUT_MS ;
 int cancel_delayed_work (int *) ;
 int jiffies ;
 int mlog (int ,char*,int ) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void o2hb_arm_write_timeout(struct o2hb_region *reg)
{
 mlog(0, "Queue write timeout for %u ms\n", O2HB_MAX_WRITE_TIMEOUT_MS);

 cancel_delayed_work(&reg->hr_write_timeout_work);
 reg->hr_last_timeout_start = jiffies;
 schedule_delayed_work(&reg->hr_write_timeout_work,
         msecs_to_jiffies(O2HB_MAX_WRITE_TIMEOUT_MS));
}
