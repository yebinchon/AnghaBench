
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa168fb_info {scalar_t__ reg_base; } ;
typedef int irqreturn_t ;


 int GRA_FRAME_IRQ0_ENA_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SPU_IRQ_ISR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t pxa168fb_handle_irq(int irq, void *dev_id)
{
 struct pxa168fb_info *fbi = dev_id;
 u32 isr = readl(fbi->reg_base + SPU_IRQ_ISR);

 if ((isr & GRA_FRAME_IRQ0_ENA_MASK)) {

  writel(isr & (~GRA_FRAME_IRQ0_ENA_MASK),
   fbi->reg_base + SPU_IRQ_ISR);

  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
