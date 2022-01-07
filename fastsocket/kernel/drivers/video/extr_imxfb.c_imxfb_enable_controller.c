
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {int screen_dma; int (* lcd_power ) (int) ;int (* backlight_power ) (int) ;int clk; scalar_t__ regs; } ;


 int CPOS_CC0 ;
 int CPOS_CC1 ;
 scalar_t__ LCDC_CPOS ;
 scalar_t__ LCDC_POS ;
 scalar_t__ LCDC_RMCR ;
 scalar_t__ LCDC_SSA ;
 int RMCR_LCDC_EN ;
 int clk_enable (int ) ;
 int pr_debug (char*) ;
 int readl (scalar_t__) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imxfb_enable_controller(struct imxfb_info *fbi)
{
 pr_debug("Enabling LCD controller\n");

 writel(fbi->screen_dma, fbi->regs + LCDC_SSA);


 writel(0x00000000, fbi->regs + LCDC_POS);


 writel(readl(fbi->regs + LCDC_CPOS) & ~(CPOS_CC0 | CPOS_CC1),
  fbi->regs + LCDC_CPOS);

 writel(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);

 clk_enable(fbi->clk);

 if (fbi->backlight_power)
  fbi->backlight_power(1);
 if (fbi->lcd_power)
  fbi->lcd_power(1);
}
