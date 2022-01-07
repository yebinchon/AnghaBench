
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_scaler2_cfg {int vertInterResolution; int vertPhaseMult; int outHeight; int inHeight; int horizInterResolution; int horizPhaseMult; int outWidth; int inWidth; int vEnable; int hEnable; } ;
struct TYPE_7__ {int interpolationResolution; int phaseMultiplicationFactor; int outputSize; int inputSize; int enable; } ;
struct TYPE_6__ {int interpolationResolution; int phaseMultiplicationFactor; int outputSize; int inputSize; int enable; } ;
struct vfe_cmd_scaler2_config {TYPE_3__ vconfig; TYPE_2__ hconfig; int enable; } ;
typedef int cmd ;
struct TYPE_5__ {int scaler2YEnable; } ;
struct TYPE_8__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_SCALE_Y_CFG ;
 TYPE_4__* ctrl ;
 int memset (struct vfe_scaler2_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_scaler2y_config(struct vfe_cmd_scaler2_config *in)
{
 struct vfe_scaler2_cfg cmd;

 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.scaler2YEnable = in->enable;

 cmd.hEnable = in->hconfig.enable;
 cmd.vEnable = in->vconfig.enable;
 cmd.inWidth = in->hconfig.inputSize;
 cmd.outWidth = in->hconfig.outputSize;
 cmd.horizPhaseMult = in->hconfig.phaseMultiplicationFactor;
 cmd.horizInterResolution = in->hconfig.interpolationResolution;
 cmd.inHeight = in->vconfig.inputSize;
 cmd.outHeight = in->vconfig.outputSize;
 cmd.vertPhaseMult = in->vconfig.phaseMultiplicationFactor;
 cmd.vertInterResolution = in->vconfig.interpolationResolution;

 vfe_prog_hw(ctrl->vfebase + VFE_SCALE_Y_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
