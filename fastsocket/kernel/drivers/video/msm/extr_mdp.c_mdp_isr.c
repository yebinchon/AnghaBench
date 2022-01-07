
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mdp_info {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int (* func ) (TYPE_1__*) ;} ;


 int DL0_DMA2_TERM_DONE ;
 int DL0_ROI_DONE ;
 int IRQ_HANDLED ;
 int MDP_INTR_CLEAR ;
 int MDP_INTR_STATUS ;
 TYPE_1__* dma_callback ;
 int locked_disable_mdp_irq (struct mdp_info*,int) ;
 int mdp_dma2_waitqueue ;
 int mdp_irq_mask ;
 int mdp_lock ;
 int mdp_ppp_waitqueue ;
 int mdp_readl (struct mdp_info*,int ) ;
 int mdp_writel (struct mdp_info*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t mdp_isr(int irq, void *data)
{
 uint32_t status;
 unsigned long irq_flags;
 struct mdp_info *mdp = data;

 spin_lock_irqsave(&mdp_lock, irq_flags);

 status = mdp_readl(mdp, MDP_INTR_STATUS);
 mdp_writel(mdp, status, MDP_INTR_CLEAR);

 status &= mdp_irq_mask;
 if (status & DL0_DMA2_TERM_DONE) {
  if (dma_callback) {
   dma_callback->func(dma_callback);
   dma_callback = ((void*)0);
  }
  wake_up(&mdp_dma2_waitqueue);
 }

 if (status & DL0_ROI_DONE)
  wake_up(&mdp_ppp_waitqueue);

 if (status)
  locked_disable_mdp_irq(mdp, status);

 spin_unlock_irqrestore(&mdp_lock, irq_flags);
 return IRQ_HANDLED;
}
