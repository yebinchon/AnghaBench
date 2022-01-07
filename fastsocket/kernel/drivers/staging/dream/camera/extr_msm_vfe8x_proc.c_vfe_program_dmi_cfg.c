
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef enum VFE_DMI_RAM_SEL { ____Placeholder_VFE_DMI_RAM_SEL } VFE_DMI_RAM_SEL ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_DMI_ADDR ;
 scalar_t__ VFE_DMI_CFG ;
 scalar_t__ VFE_DMI_CFG_DEFAULT ;
 TYPE_1__* ctrl ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void vfe_program_dmi_cfg(enum VFE_DMI_RAM_SEL bankSel)
{

 uint32_t value = (uint32_t) ctrl->vfebase + VFE_DMI_CFG_DEFAULT;

 value += (uint32_t)bankSel;


 writel(value, ctrl->vfebase + VFE_DMI_CFG);
 writel(0, ctrl->vfebase + VFE_DMI_ADDR);
}
