
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int misrEnable; int binningEnable; int irqSubSampleEnable; int busSubSampleEnable; int vfeSubSampleEnable; int syncMode; int hSyncEdge; int vSyncEdge; } ;
struct vfe_camif_cfg_data {TYPE_1__ camifCfgFromCmd; int camif2BusEnable; int camif2OutputEnable; } ;
struct VFE_CAMIFConfigType {int misrEnable; int binningEnable; int irqSubsampleEnable; int camif2busEnable; int camif2vfeEnable; int busSubsampleEnable; int vfeSubsampleEnable; int syncMode; int HSyncEdge; int VSyncEdge; } ;
typedef int cfg ;
struct TYPE_4__ {scalar_t__ vfebase; } ;


 scalar_t__ CAMIF_CONFIG ;
 TYPE_2__* ctrl ;
 int memset (struct VFE_CAMIFConfigType*,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_reg_camif_config(struct vfe_camif_cfg_data *in)
{
 struct VFE_CAMIFConfigType cfg;

 memset(&cfg, 0, sizeof(cfg));

 cfg.VSyncEdge =
  in->camifCfgFromCmd.vSyncEdge;

 cfg.HSyncEdge =
  in->camifCfgFromCmd.hSyncEdge;

 cfg.syncMode =
  in->camifCfgFromCmd.syncMode;

 cfg.vfeSubsampleEnable =
  in->camifCfgFromCmd.vfeSubSampleEnable;

 cfg.busSubsampleEnable =
  in->camifCfgFromCmd.busSubSampleEnable;

 cfg.camif2vfeEnable =
  in->camif2OutputEnable;

 cfg.camif2busEnable =
  in->camif2BusEnable;

 cfg.irqSubsampleEnable =
  in->camifCfgFromCmd.irqSubSampleEnable;

 cfg.binningEnable =
  in->camifCfgFromCmd.binningEnable;

 cfg.misrEnable =
  in->camifCfgFromCmd.misrEnable;


 writel(*((uint32_t *)&cfg), ctrl->vfebase + CAMIF_CONFIG);
}
