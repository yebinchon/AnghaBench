
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ TICKDEV_MODE_ONESHOT ;
 TYPE_1__ __get_cpu_var (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int tick_cpu_device ;

int tick_oneshot_mode_active(void)
{
 unsigned long flags;
 int ret;

 local_irq_save(flags);
 ret = __get_cpu_var(tick_cpu_device).mode == TICKDEV_MODE_ONESHOT;
 local_irq_restore(flags);

 return ret;
}
