
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int tick_setup_periodic (struct clock_event_device*,int) ;

__attribute__((used)) static void tick_broadcast_start_periodic(struct clock_event_device *bc)
{
 if (bc)
  tick_setup_periodic(bc, 1);
}
