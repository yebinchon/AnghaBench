
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_info {int device; struct atmel_lcdfb_info* par; } ;
struct atmel_lcdfb_info {int task; } ;
typedef int irqreturn_t ;


 int ATMEL_LCDC_ICR ;
 int ATMEL_LCDC_ISR ;
 int ATMEL_LCDC_UFLWI ;
 int IRQ_HANDLED ;
 int dev_warn (int ,char*,int) ;
 int lcdc_readl (struct atmel_lcdfb_info*,int ) ;
 int lcdc_writel (struct atmel_lcdfb_info*,int ,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t atmel_lcdfb_interrupt(int irq, void *dev_id)
{
 struct fb_info *info = dev_id;
 struct atmel_lcdfb_info *sinfo = info->par;
 u32 status;

 status = lcdc_readl(sinfo, ATMEL_LCDC_ISR);
 if (status & ATMEL_LCDC_UFLWI) {
  dev_warn(info->device, "FIFO underflow %#x\n", status);

  schedule_work(&sinfo->task);
 }
 lcdc_writel(sinfo, ATMEL_LCDC_ICR, status);
 return IRQ_HANDLED;
}
