
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int DSCTRL ;
 int DSCTRL_SYNCGEN_EN ;





 int PIXCLK ;
 int PIXCLK_EN ;
 int VOVRCLK ;
 int VOVRCLK_EN ;
 int readl (int ) ;
 int write_reg_dly (int,int ) ;

__attribute__((used)) static int mbxfb_blank(int blank, struct fb_info *info)
{
 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  write_reg_dly((readl(DSCTRL) & ~DSCTRL_SYNCGEN_EN), DSCTRL);
  write_reg_dly((readl(PIXCLK) & ~PIXCLK_EN), PIXCLK);
  write_reg_dly((readl(VOVRCLK) & ~VOVRCLK_EN), VOVRCLK);
  break;
 case 129:
  write_reg_dly((readl(DSCTRL) | DSCTRL_SYNCGEN_EN), DSCTRL);
  write_reg_dly((readl(PIXCLK) | PIXCLK_EN), PIXCLK);
  break;
 }
 return 0;
}
