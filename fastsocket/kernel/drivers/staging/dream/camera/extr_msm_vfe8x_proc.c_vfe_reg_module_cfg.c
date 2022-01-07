
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_module_enable {int scaler2CbcrEnable; int scaler2YEnable; int chromaSubsampleEnable; int chromaSuppressionEnable; int asfEnable; int chromaEnhanEnable; int rgbLUTEnable; int lumaAdaptationEnable; int skinToneEnable; int yHistEnable; int colorCorrectionEnable; int whiteBalanceEnable; int mainScalerEnable; int cropEnable; int statsEnable; int demosaicEnable; int chromaUpsampleEnable; int demuxEnable; int lensRollOffEnable; int blackLevelCorrectionEnable; } ;
struct vfe_mod_enable {int scaler2CbcrEnable; int scaler2YEnable; int chromaSubsampleEnable; int chromaSuppressionEnable; int asfEnable; int chromaEnhanEnable; int rgbLUTEnable; int lumaAdaptationEnable; int skinToneEnable; int yHistEnable; int colorCorrectionEnable; int whiteBalanceEnable; int mainScalerEnable; int cropEnable; int statsEnable; int demosaicEnable; int chromaUpsampleEnable; int demuxEnable; int lensRollOffEnable; int blackLevelCorrectionEnable; } ;
typedef int ena ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_MODULE_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_mod_enable*,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_reg_module_cfg(struct vfe_module_enable *in)
{
 struct vfe_mod_enable ena;

 memset(&ena, 0, sizeof(ena));

 ena.blackLevelCorrectionEnable = in->blackLevelCorrectionEnable;
 ena.lensRollOffEnable = in->lensRollOffEnable;
 ena.demuxEnable = in->demuxEnable;
 ena.chromaUpsampleEnable = in->chromaUpsampleEnable;
 ena.demosaicEnable = in->demosaicEnable;
 ena.statsEnable = in->statsEnable;
 ena.cropEnable = in->cropEnable;
 ena.mainScalerEnable = in->mainScalerEnable;
 ena.whiteBalanceEnable = in->whiteBalanceEnable;
 ena.colorCorrectionEnable = in->colorCorrectionEnable;
 ena.yHistEnable = in->yHistEnable;
 ena.skinToneEnable = in->skinToneEnable;
 ena.lumaAdaptationEnable = in->lumaAdaptationEnable;
 ena.rgbLUTEnable = in->rgbLUTEnable;
 ena.chromaEnhanEnable = in->chromaEnhanEnable;
 ena.asfEnable = in->asfEnable;
 ena.chromaSuppressionEnable = in->chromaSuppressionEnable;
 ena.chromaSubsampleEnable = in->chromaSubsampleEnable;
 ena.scaler2YEnable = in->scaler2YEnable;
 ena.scaler2CbcrEnable = in->scaler2CbcrEnable;

 writel(*((uint32_t *)&ena), ctrl->vfebase + VFE_MODULE_CFG);
}
