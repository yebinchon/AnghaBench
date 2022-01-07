
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_black_level_config {int oddOddAdjustment; int oddEvenAdjustment; int evenOddAdjustment; int evenEvenAdjustment; int enable; } ;
struct vfe_blacklevel_cfg {int oddOddAdjustment; int oddEvenAdjustment; int evenOddAdjustment; int evenEvenAdjustment; } ;
typedef int cmd ;
struct TYPE_3__ {int blackLevelCorrectionEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_BLACK_EVEN_EVEN_VALUE ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_blacklevel_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_black_level_config(struct vfe_cmd_black_level_config *in)
{
 struct vfe_blacklevel_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.blackLevelCorrectionEnable = in->enable;

 cmd.evenEvenAdjustment = in->evenEvenAdjustment;
 cmd.evenOddAdjustment = in->evenOddAdjustment;
 cmd.oddEvenAdjustment = in->oddEvenAdjustment;
 cmd.oddOddAdjustment = in->oddOddAdjustment;

 vfe_prog_hw(ctrl->vfebase + VFE_BLACK_EVEN_EVEN_VALUE,
  (uint32_t *)&cmd, sizeof(cmd));
}
