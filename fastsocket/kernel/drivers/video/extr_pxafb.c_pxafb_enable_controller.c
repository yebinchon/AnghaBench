
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {int* fdadr; int reg_lccr0; int reg_lccr1; int reg_lccr2; int reg_lccr3; int lccr0; int reg_lccr4; int clk; } ;


 int FDADR0 ;
 int FDADR1 ;
 int LCCR0 ;
 int LCCR0_ENB ;
 int LCCR0_LCDT ;
 int LCCR1 ;
 int LCCR2 ;
 int LCCR3 ;
 int LCCR4 ;
 int clk_enable (int ) ;
 int lcd_writel (struct pxafb_info*,int ,int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void pxafb_enable_controller(struct pxafb_info *fbi)
{
 pr_debug("pxafb: Enabling LCD controller\n");
 pr_debug("fdadr0 0x%08x\n", (unsigned int) fbi->fdadr[0]);
 pr_debug("fdadr1 0x%08x\n", (unsigned int) fbi->fdadr[1]);
 pr_debug("reg_lccr0 0x%08x\n", (unsigned int) fbi->reg_lccr0);
 pr_debug("reg_lccr1 0x%08x\n", (unsigned int) fbi->reg_lccr1);
 pr_debug("reg_lccr2 0x%08x\n", (unsigned int) fbi->reg_lccr2);
 pr_debug("reg_lccr3 0x%08x\n", (unsigned int) fbi->reg_lccr3);


 clk_enable(fbi->clk);

 if (fbi->lccr0 & LCCR0_LCDT)
  return;


 lcd_writel(fbi, LCCR4, fbi->reg_lccr4);
 lcd_writel(fbi, LCCR3, fbi->reg_lccr3);
 lcd_writel(fbi, LCCR2, fbi->reg_lccr2);
 lcd_writel(fbi, LCCR1, fbi->reg_lccr1);
 lcd_writel(fbi, LCCR0, fbi->reg_lccr0 & ~LCCR0_ENB);

 lcd_writel(fbi, FDADR0, fbi->fdadr[0]);
 lcd_writel(fbi, FDADR1, fbi->fdadr[1]);
 lcd_writel(fbi, LCCR0, fbi->reg_lccr0 | LCCR0_ENB);
}
