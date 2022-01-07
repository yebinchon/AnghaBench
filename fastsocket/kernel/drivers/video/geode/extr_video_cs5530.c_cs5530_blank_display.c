
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct geodefb_par {scalar_t__ panel_x; scalar_t__ vid_regs; scalar_t__ enable_crt; } ;
struct fb_info {struct geodefb_par* par; } ;


 int CS5530_DCFG_DAC_BL_EN ;
 int CS5530_DCFG_DAC_PWR_EN ;
 int CS5530_DCFG_FP_DATA_EN ;
 int CS5530_DCFG_FP_PWR_EN ;
 int CS5530_DCFG_HSYNC_EN ;
 int CS5530_DCFG_VSYNC_EN ;
 scalar_t__ CS5530_DISPLAY_CONFIG ;
 int EINVAL ;





 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cs5530_blank_display(struct fb_info *info, int blank_mode)
{
 struct geodefb_par *par = info->par;
 u32 dcfg;
 int blank, hsync, vsync;

 switch (blank_mode) {
 case 129:
  blank = 0; hsync = 1; vsync = 1;
  break;
 case 131:
  blank = 1; hsync = 1; vsync = 1;
  break;
 case 128:
  blank = 1; hsync = 1; vsync = 0;
  break;
 case 132:
  blank = 1; hsync = 0; vsync = 1;
  break;
 case 130:
  blank = 1; hsync = 0; vsync = 0;
  break;
 default:
  return -EINVAL;
 }

 dcfg = readl(par->vid_regs + CS5530_DISPLAY_CONFIG);

 dcfg &= ~(CS5530_DCFG_DAC_BL_EN | CS5530_DCFG_DAC_PWR_EN
    | CS5530_DCFG_HSYNC_EN | CS5530_DCFG_VSYNC_EN
    | CS5530_DCFG_FP_DATA_EN | CS5530_DCFG_FP_PWR_EN);

 if (par->enable_crt) {
  if (!blank)
   dcfg |= CS5530_DCFG_DAC_BL_EN | CS5530_DCFG_DAC_PWR_EN;
  if (hsync)
   dcfg |= CS5530_DCFG_HSYNC_EN;
  if (vsync)
   dcfg |= CS5530_DCFG_VSYNC_EN;
 }
 if (par->panel_x > 0) {
  if (!blank)
   dcfg |= CS5530_DCFG_FP_DATA_EN;
  if (hsync && vsync)
   dcfg |= CS5530_DCFG_FP_PWR_EN;
 }

 writel(dcfg, par->vid_regs + CS5530_DISPLAY_CONFIG);

 return 0;
}
