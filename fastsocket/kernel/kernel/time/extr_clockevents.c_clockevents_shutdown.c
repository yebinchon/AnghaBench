
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv64; } ;
struct clock_event_device {TYPE_1__ next_event; } ;


 int CLOCK_EVT_MODE_SHUTDOWN ;
 int KTIME_MAX ;
 int clockevents_set_mode (struct clock_event_device*,int ) ;

void clockevents_shutdown(struct clock_event_device *dev)
{
 clockevents_set_mode(dev, CLOCK_EVT_MODE_SHUTDOWN);
 dev->next_event.tv64 = KTIME_MAX;
}
