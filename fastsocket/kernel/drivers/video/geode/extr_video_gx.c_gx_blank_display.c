
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gxfb_par {scalar_t__ enable_crt; } ;
struct fb_info {struct gxfb_par* par; } ;


 int EINVAL ;





 int FP_PM ;
 int FP_PM_P ;
 int VP_DCFG ;
 int VP_DCFG_CRT_EN ;
 int VP_DCFG_DAC_BL_EN ;
 int VP_DCFG_HSYNC_EN ;
 int VP_DCFG_VSYNC_EN ;
 int read_fp (struct gxfb_par*,int ) ;
 int read_vp (struct gxfb_par*,int ) ;
 int write_fp (struct gxfb_par*,int ,int) ;
 int write_vp (struct gxfb_par*,int ,int) ;

int gx_blank_display(struct fb_info *info, int blank_mode)
{
 struct gxfb_par *par = info->par;
 u32 dcfg, fp_pm;
 int blank, hsync, vsync, crt;


 switch (blank_mode) {
 case 129:
  blank = 0; hsync = 1; vsync = 1; crt = 1;
  break;
 case 131:
  blank = 1; hsync = 1; vsync = 1; crt = 1;
  break;
 case 128:
  blank = 1; hsync = 1; vsync = 0; crt = 1;
  break;
 case 132:
  blank = 1; hsync = 0; vsync = 1; crt = 1;
  break;
 case 130:
  blank = 1; hsync = 0; vsync = 0; crt = 0;
  break;
 default:
  return -EINVAL;
 }
 dcfg = read_vp(par, VP_DCFG);
 dcfg &= ~(VP_DCFG_DAC_BL_EN | VP_DCFG_HSYNC_EN | VP_DCFG_VSYNC_EN |
   VP_DCFG_CRT_EN);
 if (!blank)
  dcfg |= VP_DCFG_DAC_BL_EN;
 if (hsync)
  dcfg |= VP_DCFG_HSYNC_EN;
 if (vsync)
  dcfg |= VP_DCFG_VSYNC_EN;
 if (crt)
  dcfg |= VP_DCFG_CRT_EN;
 write_vp(par, VP_DCFG, dcfg);



 if (par->enable_crt == 0) {
  fp_pm = read_fp(par, FP_PM);
  if (blank_mode == 130)
   fp_pm &= ~FP_PM_P;
  else
   fp_pm |= FP_PM_P;
  write_fp(par, FP_PM, fp_pm);
 }

 return 0;
}
