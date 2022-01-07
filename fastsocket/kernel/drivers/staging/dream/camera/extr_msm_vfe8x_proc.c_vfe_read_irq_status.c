
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {void* cbcrWrPmStats1; void* cbcrWrPmStats0; void* yWrPmStats1; void* yWrPmStats0; } ;
struct TYPE_5__ {void* cbcrWrPmStats1; void* cbcrWrPmStats0; void* yWrPmStats1; void* yWrPmStats0; } ;
struct TYPE_7__ {TYPE_2__ viewPathPmInfo; TYPE_1__ encPathPmInfo; } ;
struct vfe_irq_thread_msg {TYPE_3__ pmInfo; void* camifStatus; void* vfeIrqStatus; } ;
struct TYPE_8__ {scalar_t__ vfebase; } ;


 scalar_t__ CAMIF_COMMAND ;
 scalar_t__ CAMIF_STATUS ;
 int CDBG (char*,void*) ;
 scalar_t__ VFE_IRQ_STATUS ;
 TYPE_4__* ctrl ;
 int memset (struct vfe_irq_thread_msg*,int ,int) ;
 void* readl (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void vfe_read_irq_status(struct vfe_irq_thread_msg *out)
{
 uint32_t *temp;

 memset(out, 0, sizeof(struct vfe_irq_thread_msg));

 temp = (uint32_t *)(ctrl->vfebase + VFE_IRQ_STATUS);
 out->vfeIrqStatus = readl(temp);

 temp = (uint32_t *)(ctrl->vfebase + CAMIF_STATUS);
 out->camifStatus = readl(temp);
 writel(0x7, ctrl->vfebase + CAMIF_COMMAND);
 writel(0x3, ctrl->vfebase + CAMIF_COMMAND);
 CDBG("camifStatus  = 0x%x\n", out->camifStatus);
}
