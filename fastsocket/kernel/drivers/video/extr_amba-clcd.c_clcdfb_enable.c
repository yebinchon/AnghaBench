
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clcd_fb {TYPE_1__* board; scalar_t__ regs; int clk; } ;
struct TYPE_2__ {int (* enable ) (struct clcd_fb*) ;} ;


 scalar_t__ CLCD_CNTL ;
 int CNTL_LCDEN ;
 int CNTL_LCDPWR ;
 int clcdfb_sleep (int) ;
 int clk_enable (int ) ;
 int stub1 (struct clcd_fb*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void clcdfb_enable(struct clcd_fb *fb, u32 cntl)
{



 clk_enable(fb->clk);




 cntl |= CNTL_LCDEN;
 writel(cntl, fb->regs + CLCD_CNTL);

 clcdfb_sleep(20);




 cntl |= CNTL_LCDPWR;
 writel(cntl, fb->regs + CLCD_CNTL);




 if (fb->board->enable)
  fb->board->enable(fb);
}
