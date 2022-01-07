
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_DEMUX_CFG ;
 scalar_t__ VFE_DEMUX_EVEN_CFG ;
 scalar_t__ VFE_DEMUX_ODD_CFG ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_config_demux(uint32_t period, uint32_t even, uint32_t odd)
{
 writel(period, ctrl->vfebase + VFE_DEMUX_CFG);
 writel(even, ctrl->vfebase + VFE_DEMUX_EVEN_CFG);
 writel(odd, ctrl->vfebase + VFE_DEMUX_ODD_CFG);
}
