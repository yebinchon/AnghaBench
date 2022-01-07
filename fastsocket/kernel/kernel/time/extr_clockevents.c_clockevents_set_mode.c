
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int mode; int mult; int (* set_mode ) (int,struct clock_event_device*) ;} ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int CLOCK_EVT_MODE_ONESHOT ;
 int WARN_ON (int) ;
 int stub1 (int,struct clock_event_device*) ;
 scalar_t__ unlikely (int) ;

void clockevents_set_mode(struct clock_event_device *dev,
     enum clock_event_mode mode)
{
 if (dev->mode != mode) {
  dev->set_mode(mode, dev);
  dev->mode = mode;





  if (mode == CLOCK_EVT_MODE_ONESHOT) {
   if (unlikely(!dev->mult)) {
    dev->mult = 1;
    WARN_ON(1);
   }
  }
 }
}
