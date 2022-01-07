
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lxfb_par {int output; } ;
struct fb_info {struct lxfb_par* par; } ;


 int EINVAL ;





 int FP_PM ;
 int FP_PM_P ;
 int OUTPUT_PANEL ;
 int VP_DCFG ;
 int VP_DCFG_CRT_EN ;
 int VP_DCFG_DAC_BL_EN ;
 int VP_DCFG_HSYNC_EN ;
 int VP_DCFG_VSYNC_EN ;
 int VP_MISC ;
 int VP_MISC_DACPWRDN ;
 int read_fp (struct lxfb_par*,int ) ;
 int read_vp (struct lxfb_par*,int ) ;
 int write_fp (struct lxfb_par*,int ,int) ;
 int write_vp (struct lxfb_par*,int ,int) ;

int lx_blank_display(struct fb_info *info, int blank_mode)
{
 struct lxfb_par *par = info->par;
 u32 dcfg, misc, fp_pm;
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

 dcfg = read_vp(par, VP_DCFG);
 dcfg &= ~(VP_DCFG_DAC_BL_EN | VP_DCFG_HSYNC_EN | VP_DCFG_VSYNC_EN |
   VP_DCFG_CRT_EN);
 if (!blank)
  dcfg |= VP_DCFG_DAC_BL_EN | VP_DCFG_CRT_EN;
 if (hsync)
  dcfg |= VP_DCFG_HSYNC_EN;
 if (vsync)
  dcfg |= VP_DCFG_VSYNC_EN;

 write_vp(par, VP_DCFG, dcfg);

 misc = read_vp(par, VP_MISC);

 if (vsync && hsync)
  misc &= ~VP_MISC_DACPWRDN;
 else
  misc |= VP_MISC_DACPWRDN;

 write_vp(par, VP_MISC, misc);



 if (par->output & OUTPUT_PANEL) {
  fp_pm = read_fp(par, FP_PM);
  if (blank_mode == 130)
   fp_pm &= ~FP_PM_P;
  else
   fp_pm |= FP_PM_P;
  write_fp(par, FP_PM, fp_pm);
 }

 return 0;
}
