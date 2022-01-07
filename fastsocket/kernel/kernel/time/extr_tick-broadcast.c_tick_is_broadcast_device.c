
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 TYPE_1__ tick_broadcast_device ;

int tick_is_broadcast_device(struct clock_event_device *dev)
{
 return (dev && tick_broadcast_device.evtdev == dev);
}
