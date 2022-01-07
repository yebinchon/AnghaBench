
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_demosaic_cfg {int abfShift; int forceAbfOn; int abfEnable; } ;
struct vfe_demosaic_abf_cfg {int maxValue; int minValue; int ratio; int lpThreshold; } ;
struct TYPE_3__ {int max; int min; int ratio; int lpThreshold; int shift; int forceOn; int enable; } ;
struct vfe_cmd_demosaic_abf_update {TYPE_1__ abfUpdate; } ;
typedef int cmdabf ;
typedef int cmd ;
struct TYPE_4__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_DEMOSAIC_ABF_CFG_0 ;
 scalar_t__ VFE_DEMOSAIC_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_demosaic_cfg*,int ,int) ;
 int readl (scalar_t__) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_demosaic_abf_update(struct vfe_cmd_demosaic_abf_update *in)
{
struct vfe_demosaic_cfg cmd;
 struct vfe_demosaic_abf_cfg cmdabf;
 uint32_t temp;

 memset(&cmd, 0, sizeof(cmd));
 temp = readl(ctrl->vfebase + VFE_DEMOSAIC_CFG);

 cmd = *((struct vfe_demosaic_cfg *)(&temp));
 cmd.abfEnable = in->abfUpdate.enable;
 cmd.forceAbfOn = in->abfUpdate.forceOn;
 cmd.abfShift = in->abfUpdate.shift;
 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_CFG,
  (uint32_t *)&cmd, sizeof(cmd));

 cmdabf.lpThreshold = in->abfUpdate.lpThreshold;
 cmdabf.ratio = in->abfUpdate.ratio;
 cmdabf.minValue = in->abfUpdate.min;
 cmdabf.maxValue = in->abfUpdate.max;
 vfe_prog_hw(ctrl->vfebase + VFE_DEMOSAIC_ABF_CFG_0,
  (uint32_t *)&cmdabf, sizeof(cmdabf));
}
