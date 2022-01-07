
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_chroma_suppression_config {int nn1; int mm1; int n3; int n1; int m3; int m1; int enable; } ;
struct vfe_chroma_suppress_cfg {int nn1; int mm1; int n3; int n1; int m3; int m1; } ;
typedef int cmd ;
struct TYPE_3__ {int chromaSuppressionEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_CHROMA_SUPPRESS_CFG_0 ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_chroma_suppress_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_chroma_sup_config(struct vfe_cmd_chroma_suppression_config *in)
{
 struct vfe_chroma_suppress_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.chromaSuppressionEnable = in->enable;

 cmd.m1 = in->m1;
 cmd.m3 = in->m3;
 cmd.n1 = in->n1;
 cmd.n3 = in->n3;
 cmd.mm1 = in->mm1;
 cmd.nn1 = in->nn1;

 vfe_prog_hw(ctrl->vfebase + VFE_CHROMA_SUPPRESS_CFG_0,
  (uint32_t *)&cmd, sizeof(cmd));
}
