
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clcd_fb {int clk; scalar_t__ regs; TYPE_1__* board; } ;
struct TYPE_2__ {int (* disable ) (struct clcd_fb*) ;} ;


 scalar_t__ CLCD_CNTL ;
 int CNTL_LCDEN ;
 int CNTL_LCDPWR ;
 int clcdfb_sleep (int) ;
 int clk_disable (int ) ;
 int readl (scalar_t__) ;
 int stub1 (struct clcd_fb*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void clcdfb_disable(struct clcd_fb *fb)
{
 u32 val;

 if (fb->board->disable)
  fb->board->disable(fb);

 val = readl(fb->regs + CLCD_CNTL);
 if (val & CNTL_LCDPWR) {
  val &= ~CNTL_LCDPWR;
  writel(val, fb->regs + CLCD_CNTL);

  clcdfb_sleep(20);
 }
 if (val & CNTL_LCDEN) {
  val &= ~CNTL_LCDEN;
  writel(val, fb->regs + CLCD_CNTL);
 }




 clk_disable(fb->clk);
}
