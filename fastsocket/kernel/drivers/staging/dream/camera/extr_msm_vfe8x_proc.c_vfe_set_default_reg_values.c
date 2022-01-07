
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_CGC_OVERRIDE ;
 scalar_t__ VFE_CLAMP_MAX_CFG ;
 scalar_t__ VFE_CLAMP_MIN_CFG ;
 scalar_t__ VFE_DEMUX_GAIN_0 ;
 scalar_t__ VFE_DEMUX_GAIN_1 ;
 scalar_t__ VFE_FRAMEDROP_ENC_CBCR_CFG ;
 scalar_t__ VFE_FRAMEDROP_ENC_CBCR_PATTERN ;
 scalar_t__ VFE_FRAMEDROP_ENC_Y_CFG ;
 scalar_t__ VFE_FRAMEDROP_ENC_Y_PATTERN ;
 scalar_t__ VFE_FRAMEDROP_VIEW_CBCR_CFG ;
 scalar_t__ VFE_FRAMEDROP_VIEW_CBCR_PATTERN ;
 scalar_t__ VFE_FRAMEDROP_VIEW_Y_CFG ;
 scalar_t__ VFE_FRAMEDROP_VIEW_Y_PATTERN ;
 TYPE_1__* ctrl ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vfe_set_default_reg_values(void)
{
 writel(0x800080, ctrl->vfebase + VFE_DEMUX_GAIN_0);
 writel(0x800080, ctrl->vfebase + VFE_DEMUX_GAIN_1);
 writel(0xFFFFF, ctrl->vfebase + VFE_CGC_OVERRIDE);


 writel(0x1f, ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_CFG);
 writel(0x1f, ctrl->vfebase + VFE_FRAMEDROP_ENC_CBCR_CFG);
 writel(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_PATTERN);
 writel(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_ENC_CBCR_PATTERN);
 writel(0x1f, ctrl->vfebase + VFE_FRAMEDROP_VIEW_Y_CFG);
 writel(0x1f, ctrl->vfebase + VFE_FRAMEDROP_VIEW_CBCR_CFG);
 writel(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_VIEW_Y_PATTERN);
 writel(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_VIEW_CBCR_PATTERN);
 writel(0, ctrl->vfebase + VFE_CLAMP_MIN_CFG);
 writel(0xFFFFFF, ctrl->vfebase + VFE_CLAMP_MAX_CFG);
}
