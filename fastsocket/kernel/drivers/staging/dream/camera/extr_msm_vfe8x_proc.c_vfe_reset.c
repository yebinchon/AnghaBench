
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resetAckIrq; } ;
struct TYPE_4__ {scalar_t__ vfebase; int vfeImaskPacked; TYPE_1__ vfeImaskLocal; } ;


 int TRUE ;
 int VFE_CLEAR_ALL_IRQS ;
 int VFE_DISABLE_ALL_IRQS ;
 scalar_t__ VFE_GLOBAL_RESET_CMD ;
 scalar_t__ VFE_IRQ_CLEAR ;
 scalar_t__ VFE_IRQ_COMPOSITE_MASK ;
 scalar_t__ VFE_IRQ_MASK ;
 int VFE_RESET_UPON_RESET_CMD ;
 TYPE_2__* ctrl ;
 int vfe_irq_pack (TYPE_1__) ;
 int vfe_reset_internal_variables () ;
 int writel (int ,scalar_t__) ;

void vfe_reset(void)
{
 vfe_reset_internal_variables();

 ctrl->vfeImaskLocal.resetAckIrq = TRUE;
 ctrl->vfeImaskPacked = vfe_irq_pack(ctrl->vfeImaskLocal);


 writel(VFE_DISABLE_ALL_IRQS,
  ctrl->vfebase + VFE_IRQ_COMPOSITE_MASK);


 writel(VFE_CLEAR_ALL_IRQS,
  ctrl->vfebase + VFE_IRQ_CLEAR);


 writel(ctrl->vfeImaskPacked,
  ctrl->vfebase + VFE_IRQ_MASK);

 writel(VFE_RESET_UPON_RESET_CMD,
  ctrl->vfebase + VFE_GLOBAL_RESET_CMD);
}
