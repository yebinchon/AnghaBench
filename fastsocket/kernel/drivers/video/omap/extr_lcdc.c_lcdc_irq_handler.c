
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int palette_load_complete; int last_frame_complete; } ;


 int IRQ_HANDLED ;
 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_IRQ_DONE ;
 int OMAP_LCDC_STATUS ;
 int OMAP_LCDC_STAT_ABC ;
 int OMAP_LCDC_STAT_DONE ;
 int OMAP_LCDC_STAT_FUF ;
 int OMAP_LCDC_STAT_LINE_INT ;
 int OMAP_LCDC_STAT_LOADED_PALETTE ;
 int OMAP_LCDC_STAT_SYNC_LOST ;
 int OMAP_LCDC_STAT_VSYNC ;
 int complete (int *) ;
 int disable_controller_async () ;
 TYPE_1__ lcdc ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;
 int reset_controller (int) ;

__attribute__((used)) static irqreturn_t lcdc_irq_handler(int irq, void *dev_id)
{
 u32 status;

 status = omap_readl(OMAP_LCDC_STATUS);

 if (status & (OMAP_LCDC_STAT_FUF | OMAP_LCDC_STAT_SYNC_LOST))
  reset_controller(status);
 else {
  if (status & OMAP_LCDC_STAT_DONE) {
   u32 l;






   l = omap_readl(OMAP_LCDC_CONTROL);
   l &= ~OMAP_LCDC_IRQ_DONE;
   omap_writel(l, OMAP_LCDC_CONTROL);
   complete(&lcdc.last_frame_complete);
  }
  if (status & OMAP_LCDC_STAT_LOADED_PALETTE) {
   disable_controller_async();
   complete(&lcdc.palette_load_complete);
  }
 }
 status &= ~(OMAP_LCDC_STAT_VSYNC |
      OMAP_LCDC_STAT_LOADED_PALETTE |
      OMAP_LCDC_STAT_ABC |
      OMAP_LCDC_STAT_LINE_INT);
 omap_writel(status, OMAP_LCDC_STATUS);
 return IRQ_HANDLED;
}
