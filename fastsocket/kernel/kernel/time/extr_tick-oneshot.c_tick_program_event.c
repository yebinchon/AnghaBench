
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
typedef int ktime_t ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 TYPE_1__ __get_cpu_var (int ) ;
 int tick_cpu_device ;
 int tick_dev_program_event (struct clock_event_device*,int ,int) ;

int tick_program_event(ktime_t expires, int force)
{
 struct clock_event_device *dev = __get_cpu_var(tick_cpu_device).evtdev;

 return tick_dev_program_event(dev, expires, force);
}
