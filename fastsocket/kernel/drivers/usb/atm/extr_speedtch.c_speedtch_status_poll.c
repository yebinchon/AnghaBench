
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct speedtch_instance_data {scalar_t__ poll_delay; int usbatm; TYPE_1__ status_checker; } ;


 scalar_t__ MAX_POLL_DELAY ;
 int atm_warn (int ,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int schedule_delayed_work (TYPE_1__*,int ) ;

__attribute__((used)) static void speedtch_status_poll(unsigned long data)
{
 struct speedtch_instance_data *instance = (void *)data;

 schedule_delayed_work(&instance->status_checker, 0);


 if (instance->poll_delay < MAX_POLL_DELAY)
  mod_timer(&instance->status_checker.timer, jiffies + msecs_to_jiffies(instance->poll_delay));
 else
  atm_warn(instance->usbatm, "Too many failures - disabling line status polling\n");
}
