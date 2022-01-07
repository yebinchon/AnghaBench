
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_la_config {int enable; scalar_t__* table; } ;
typedef scalar_t__ int16_t ;
typedef enum VFE_DMI_RAM_SEL { ____Placeholder_VFE_DMI_RAM_SEL } VFE_DMI_RAM_SEL ;
struct TYPE_3__ {int lumaAdaptationEnable; } ;
struct TYPE_4__ {int vfeLaBankSel; scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 int LUMA_ADAPT_LUT_RAM_BANK0 ;
 int LUMA_ADAPT_LUT_RAM_BANK1 ;
 scalar_t__ VFE_DMI_CFG ;
 int VFE_DMI_CFG_DEFAULT ;
 scalar_t__ VFE_DMI_DATA_LO ;
 scalar_t__ VFE_LA_CFG ;
 int VFE_LA_TABLE_LENGTH ;
 TYPE_2__* ctrl ;
 int vfe_program_dmi_cfg (int) ;
 int writel (int,scalar_t__) ;

void vfe_la_update(struct vfe_cmd_la_config *in)
{
 int16_t *pTable;
 enum VFE_DMI_RAM_SEL dmiRamSel;
 int i;

 pTable = in->table;
 ctrl->vfeModuleEnableLocal.lumaAdaptationEnable = in->enable;


 ctrl->vfeLaBankSel ^= 1;

 if (ctrl->vfeLaBankSel == 0)
  dmiRamSel = LUMA_ADAPT_LUT_RAM_BANK0;
 else
  dmiRamSel = LUMA_ADAPT_LUT_RAM_BANK1;


 vfe_program_dmi_cfg(dmiRamSel);

 for (i = 0; i < VFE_LA_TABLE_LENGTH; i++) {
  writel((uint32_t)(*pTable), ctrl->vfebase + VFE_DMI_DATA_LO);
  pTable++;
 }



 writel(VFE_DMI_CFG_DEFAULT, ctrl->vfebase + VFE_DMI_CFG);
 writel(ctrl->vfeLaBankSel, ctrl->vfebase + VFE_LA_CFG);
}
