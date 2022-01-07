
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 TYPE_1__ __get_cpu_var (int ) ;
 int tick_cpu_device ;

int tick_is_oneshot_available(void)
{
 struct clock_event_device *dev = __get_cpu_var(tick_cpu_device).evtdev;

 return dev && (dev->features & CLOCK_EVT_FEAT_ONESHOT);
}
