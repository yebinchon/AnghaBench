
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_rolloff_cfg {int yDeltaAccum; int pixelY; int pixelX; int gridY; int gridX; int yDelta; int gridHeight; int gridWidth; } ;
struct vfe_cmd_roll_off_config {int yDeltaAccum; int gridPixelYIndex; int gridPixelXIndex; int gridYIndex; int gridXIndex; int yDelta; int gridHeight; int gridWidth; int enable; } ;
typedef int cmd ;
struct TYPE_3__ {int lensRollOffEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_ROLLOFF_CFG_0 ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_rolloff_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;
 int vfe_write_lens_roll_off_table (struct vfe_cmd_roll_off_config*) ;

void vfe_roll_off_config(struct vfe_cmd_roll_off_config *in)
{
 struct vfe_rolloff_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.lensRollOffEnable = in->enable;

 cmd.gridWidth = in->gridWidth;
 cmd.gridHeight = in->gridHeight;
 cmd.yDelta = in->yDelta;
 cmd.gridX = in->gridXIndex;
 cmd.gridY = in->gridYIndex;
 cmd.pixelX = in->gridPixelXIndex;
 cmd.pixelY = in->gridPixelYIndex;
 cmd.yDeltaAccum = in->yDeltaAccum;

 vfe_prog_hw(ctrl->vfebase + VFE_ROLLOFF_CFG_0,
  (uint32_t *)&cmd, sizeof(cmd));

 vfe_write_lens_roll_off_table(in);
}
