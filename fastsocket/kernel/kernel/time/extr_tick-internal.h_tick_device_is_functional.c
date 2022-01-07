
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;


 int CLOCK_EVT_FEAT_DUMMY ;

__attribute__((used)) static inline int tick_device_is_functional(struct clock_event_device *dev)
{
 return !(dev->features & CLOCK_EVT_FEAT_DUMMY);
}
