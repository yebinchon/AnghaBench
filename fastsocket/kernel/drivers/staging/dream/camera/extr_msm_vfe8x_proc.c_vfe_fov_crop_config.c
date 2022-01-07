
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_fov_crop_cfg {int firstLine; int lastLine; int firstPixel; int lastPixel; } ;
struct vfe_cmd_fov_crop_config {int firstLine; int lastLine; int firstPixel; int lastPixel; int enable; } ;
typedef int cmd ;
struct TYPE_3__ {int cropEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_CROP_WIDTH_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_fov_crop_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_fov_crop_config(struct vfe_cmd_fov_crop_config *in)
{
 struct vfe_fov_crop_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.cropEnable = in->enable;


 cmd.lastPixel = in->lastPixel;
 cmd.firstPixel = in->firstPixel;


 cmd.lastLine = in->lastLine;
 cmd.firstLine = in->firstLine;

 vfe_prog_hw(ctrl->vfebase + VFE_CROP_WIDTH_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
