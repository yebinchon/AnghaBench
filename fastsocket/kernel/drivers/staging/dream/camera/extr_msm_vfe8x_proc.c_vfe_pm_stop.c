
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_BUS_PM_CMD ;
 int VFE_PERFORMANCE_MONITOR_STOP ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_pm_stop(void)
{
 writel(VFE_PERFORMANCE_MONITOR_STOP, ctrl->vfebase + VFE_BUS_PM_CMD);
}
