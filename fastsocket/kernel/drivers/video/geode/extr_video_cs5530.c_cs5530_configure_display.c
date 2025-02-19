
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct geodefb_par {scalar_t__ panel_x; scalar_t__ vid_regs; scalar_t__ enable_crt; } ;
struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; struct geodefb_par* par; } ;


 int CS5530_DCFG_CRT_HSYNC_POL ;
 int CS5530_DCFG_CRT_SYNC_SKW_INIT ;
 int CS5530_DCFG_CRT_SYNC_SKW_MASK ;
 int CS5530_DCFG_CRT_VSYNC_POL ;
 int CS5530_DCFG_DAC_PWR_EN ;
 int CS5530_DCFG_FP_DATA_EN ;
 int CS5530_DCFG_FP_PWR_EN ;
 int CS5530_DCFG_GV_PAL_BYP ;
 int CS5530_DCFG_HSYNC_EN ;
 int CS5530_DCFG_PWR_SEQ_DLY_INIT ;
 int CS5530_DCFG_PWR_SEQ_DLY_MASK ;
 int CS5530_DCFG_VSYNC_EN ;
 scalar_t__ CS5530_DISPLAY_CONFIG ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cs5530_configure_display(struct fb_info *info)
{
 struct geodefb_par *par = info->par;
 u32 dcfg;

 dcfg = readl(par->vid_regs + CS5530_DISPLAY_CONFIG);


 dcfg &= ~(CS5530_DCFG_CRT_SYNC_SKW_MASK | CS5530_DCFG_PWR_SEQ_DLY_MASK
    | CS5530_DCFG_CRT_HSYNC_POL | CS5530_DCFG_CRT_VSYNC_POL
    | CS5530_DCFG_FP_PWR_EN | CS5530_DCFG_FP_DATA_EN
    | CS5530_DCFG_DAC_PWR_EN | CS5530_DCFG_VSYNC_EN
    | CS5530_DCFG_HSYNC_EN);


 dcfg |= (CS5530_DCFG_CRT_SYNC_SKW_INIT | CS5530_DCFG_PWR_SEQ_DLY_INIT
   | CS5530_DCFG_GV_PAL_BYP);


 if (par->enable_crt) {
  dcfg |= CS5530_DCFG_DAC_PWR_EN;
  dcfg |= CS5530_DCFG_HSYNC_EN | CS5530_DCFG_VSYNC_EN;
 }

 if (par->panel_x > 0) {
  dcfg |= CS5530_DCFG_FP_PWR_EN;
  dcfg |= CS5530_DCFG_FP_DATA_EN;
 }


 if (info->var.sync & FB_SYNC_HOR_HIGH_ACT)
  dcfg |= CS5530_DCFG_CRT_HSYNC_POL;
 if (info->var.sync & FB_SYNC_VERT_HIGH_ACT)
  dcfg |= CS5530_DCFG_CRT_VSYNC_POL;

 writel(dcfg, par->vid_regs + CS5530_DISPLAY_CONFIG);
}
