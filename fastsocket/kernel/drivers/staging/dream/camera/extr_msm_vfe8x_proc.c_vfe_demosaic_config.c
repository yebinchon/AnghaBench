
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_demosaic_cfg {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; int maxValue; int minValue; int ratio; int lpThreshold; int slopeShift; int fmaxThreshold; int fminThreshold; int abfShift; int forceAbfOn; int badPixelCorrEnable; int abfEnable; } ;
struct vfe_demosaic_bpc_cfg {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; int maxValue; int minValue; int ratio; int lpThreshold; int slopeShift; int fmaxThreshold; int fminThreshold; int abfShift; int forceAbfOn; int badPixelCorrEnable; int abfEnable; } ;
struct vfe_demosaic_abf_cfg {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; int maxValue; int minValue; int ratio; int lpThreshold; int slopeShift; int fmaxThreshold; int fminThreshold; int abfShift; int forceAbfOn; int badPixelCorrEnable; int abfEnable; } ;
struct TYPE_7__ {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; int fmaxThreshold; int fminThreshold; int enable; } ;
struct TYPE_6__ {int max; int min; int ratio; int lpThreshold; int shift; int forceOn; int enable; } ;
struct vfe_cmd_demosaic_config {TYPE_3__ bpcConfig; TYPE_2__ abfConfig; int slopeShift; int enable; } ;
typedef int cmd_bpc ;
typedef int cmd_abf ;
typedef int cmd ;
struct TYPE_5__ {int demosaicEnable; } ;
struct TYPE_8__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_DEMOSAIC_ABF_CFG_0 ;
 scalar_t__ VFE_DEMOSAIC_BPC_CFG_0 ;
 scalar_t__ VFE_DEMOSAIC_CFG ;
 TYPE_4__* ctrl ;
 int memset (struct vfe_demosaic_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_demosaic_config(struct vfe_cmd_demosaic_config *in)
{
 struct vfe_demosaic_cfg cmd;
 struct vfe_demosaic_bpc_cfg cmd_bpc;
 struct vfe_demosaic_abf_cfg cmd_abf;

 memset(&cmd, 0, sizeof(cmd));
 memset(&cmd_bpc, 0, sizeof(cmd_bpc));
 memset(&cmd_abf, 0, sizeof(cmd_abf));

 ctrl->vfeModuleEnableLocal.demosaicEnable = in->enable;

 cmd.abfEnable = in->abfConfig.enable;
 cmd.badPixelCorrEnable = in->bpcConfig.enable;
 cmd.forceAbfOn = in->abfConfig.forceOn;
 cmd.abfShift = in->abfConfig.shift;
 cmd.fminThreshold = in->bpcConfig.fminThreshold;
 cmd.fmaxThreshold = in->bpcConfig.fmaxThreshold;
 cmd.slopeShift = in->slopeShift;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_CFG,
  (uint32_t *)&cmd, sizeof(cmd));

 cmd_abf.lpThreshold = in->abfConfig.lpThreshold;
 cmd_abf.ratio = in->abfConfig.ratio;
 cmd_abf.minValue = in->abfConfig.min;
 cmd_abf.maxValue = in->abfConfig.max;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_ABF_CFG_0,
  (uint32_t *)&cmd_abf, sizeof(cmd_abf));

 cmd_bpc.blueDiffThreshold = in->bpcConfig.blueDiffThreshold;
 cmd_bpc.redDiffThreshold = in->bpcConfig.redDiffThreshold;
 cmd_bpc.greenDiffThreshold = in->bpcConfig.greenDiffThreshold;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_BPC_CFG_0,
  (uint32_t *)&cmd_bpc, sizeof(cmd_bpc));
}
