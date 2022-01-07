
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_demosaic_cfg {int fmaxThreshold; int fminThreshold; int badPixelCorrEnable; } ;
struct vfe_demosaic_bpc_cfg {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; } ;
struct TYPE_3__ {int greenDiffThreshold; int redDiffThreshold; int blueDiffThreshold; int fmaxThreshold; int fminThreshold; int enable; } ;
struct vfe_cmd_demosaic_bpc_update {TYPE_1__ bpcUpdate; } ;
typedef int cmdbpc ;
typedef int cmd ;
struct TYPE_4__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_DEMOSAIC_BPC_CFG_0 ;
 scalar_t__ VFE_DEMOSAIC_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_demosaic_cfg*,int ,int) ;
 int readl (scalar_t__) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_demosaic_bpc_update(struct vfe_cmd_demosaic_bpc_update *in)
{
 struct vfe_demosaic_cfg cmd;
 struct vfe_demosaic_bpc_cfg cmdbpc;
 uint32_t temp;

 memset(&cmd, 0, sizeof(cmd));

 temp = readl(ctrl->vfebase + VFE_DEMOSAIC_CFG);

 cmd = *((struct vfe_demosaic_cfg *)(&temp));
 cmd.badPixelCorrEnable = in->bpcUpdate.enable;
 cmd.fminThreshold = in->bpcUpdate.fminThreshold;
 cmd.fmaxThreshold = in->bpcUpdate.fmaxThreshold;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_CFG,
  (uint32_t *)&cmd, sizeof(cmd));

 cmdbpc.blueDiffThreshold = in->bpcUpdate.blueDiffThreshold;
 cmdbpc.redDiffThreshold = in->bpcUpdate.redDiffThreshold;
 cmdbpc.greenDiffThreshold = in->bpcUpdate.greenDiffThreshold;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_BPC_CFG_0,
  (uint32_t *)&cmdbpc, sizeof(cmdbpc));
}
