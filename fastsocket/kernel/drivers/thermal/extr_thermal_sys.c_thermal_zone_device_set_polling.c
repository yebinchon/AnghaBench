
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int poll_queue; } ;


 int cancel_delayed_work (int *) ;
 int msecs_to_jiffies (int) ;
 int round_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void thermal_zone_device_set_polling(struct thermal_zone_device *tz,
         int delay)
{
 cancel_delayed_work(&(tz->poll_queue));

 if (!delay)
  return;

 if (delay > 1000)
  schedule_delayed_work(&(tz->poll_queue),
          round_jiffies(msecs_to_jiffies(delay)));
 else
  schedule_delayed_work(&(tz->poll_queue),
          msecs_to_jiffies(delay));
}
