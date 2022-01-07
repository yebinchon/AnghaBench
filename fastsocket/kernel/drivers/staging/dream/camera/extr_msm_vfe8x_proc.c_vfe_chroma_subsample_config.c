
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_chroma_subsample_config {int cropHeightFirstLine; int cropHeightLastLine; int cropWidthFirstPixel; int cropWidthLastPixel; int cropEnable; int vsubSampleEnable; int hsubSampleEnable; int vCosited; int hCosited; int vCositedPhase; int hCositedPhase; int enable; } ;
struct vfe_chromasubsample_cfg {int cropHeightFirstLine; int cropHeightLastLine; int cropWidthFirstPixel; int cropWidthLastPixel; int cropEnable; int vsubSampleEnable; int hsubSampleEnable; int vCosited; int hCosited; int vCositedPhase; int hCositedPhase; } ;
typedef int cmd ;
struct TYPE_3__ {int chromaSubsampleEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_CHROMA_SUBSAMPLE_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_chromasubsample_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_chroma_subsample_config(
 struct vfe_cmd_chroma_subsample_config *in)
{
 struct vfe_chromasubsample_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.chromaSubsampleEnable = in->enable;

 cmd.hCositedPhase = in->hCositedPhase;
 cmd.vCositedPhase = in->vCositedPhase;
 cmd.hCosited = in->hCosited;
 cmd.vCosited = in->vCosited;
 cmd.hsubSampleEnable = in->hsubSampleEnable;
 cmd.vsubSampleEnable = in->vsubSampleEnable;
 cmd.cropEnable = in->cropEnable;
 cmd.cropWidthLastPixel = in->cropWidthLastPixel;
 cmd.cropWidthFirstPixel = in->cropWidthFirstPixel;
 cmd.cropHeightLastLine = in->cropHeightLastLine;
 cmd.cropHeightFirstLine = in->cropHeightFirstLine;

 vfe_prog_hw(ctrl->vfebase + VFE_CHROMA_SUBSAMPLE_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
