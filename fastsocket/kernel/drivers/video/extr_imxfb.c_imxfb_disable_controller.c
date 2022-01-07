
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {scalar_t__ regs; int clk; int (* lcd_power ) (int ) ;int (* backlight_power ) (int ) ;} ;


 scalar_t__ LCDC_RMCR ;
 int clk_disable (int ) ;
 int pr_debug (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void imxfb_disable_controller(struct imxfb_info *fbi)
{
 pr_debug("Disabling LCD controller\n");

 if (fbi->backlight_power)
  fbi->backlight_power(0);
 if (fbi->lcd_power)
  fbi->lcd_power(0);

 clk_disable(fbi->clk);

 writel(0, fbi->regs + LCDC_RMCR);
}
