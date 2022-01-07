
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_main_scaler_cfg {int vertPhaseInit; int vertMNInit; int vertInterResolution; int vertPhaseMult; int outHeight; int inHeight; int horizPhaseInit; int horizMNInit; int horizInterResolution; int horizPhaseMult; int outWidth; int inWidth; int vEnable; int hEnable; } ;
struct TYPE_11__ {int phaseInit; int MNCounterInit; } ;
struct TYPE_10__ {int interpolationResolution; int phaseMultiplicationFactor; int outputSize; int inputSize; int enable; } ;
struct TYPE_9__ {int phaseInit; int MNCounterInit; } ;
struct TYPE_8__ {int interpolationResolution; int phaseMultiplicationFactor; int outputSize; int inputSize; int enable; } ;
struct vfe_cmd_main_scaler_config {TYPE_5__ MNInitV; TYPE_4__ vconfig; TYPE_3__ MNInitH; TYPE_2__ hconfig; int enable; } ;
typedef int cmd ;
struct TYPE_7__ {int mainScalerEnable; } ;
struct TYPE_12__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_SCALE_CFG ;
 TYPE_6__* ctrl ;
 int memset (struct vfe_main_scaler_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_main_scaler_config(struct vfe_cmd_main_scaler_config *in)
{
 struct vfe_main_scaler_cfg cmd;

 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.mainScalerEnable = in->enable;

 cmd.hEnable = in->hconfig.enable;
 cmd.vEnable = in->vconfig.enable;
 cmd.inWidth = in->hconfig.inputSize;
 cmd.outWidth = in->hconfig.outputSize;
 cmd.horizPhaseMult = in->hconfig.phaseMultiplicationFactor;
 cmd.horizInterResolution = in->hconfig.interpolationResolution;
 cmd.horizMNInit = in->MNInitH.MNCounterInit;
 cmd.horizPhaseInit = in->MNInitH.phaseInit;
 cmd.inHeight = in->vconfig.inputSize;
 cmd.outHeight = in->vconfig.outputSize;
 cmd.vertPhaseMult = in->vconfig.phaseMultiplicationFactor;
 cmd.vertInterResolution = in->vconfig.interpolationResolution;
 cmd.vertMNInit = in->MNInitV.MNCounterInit;
 cmd.vertPhaseInit = in->MNInitV.phaseInit;

 vfe_prog_hw(ctrl->vfebase + VFE_SCALE_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
