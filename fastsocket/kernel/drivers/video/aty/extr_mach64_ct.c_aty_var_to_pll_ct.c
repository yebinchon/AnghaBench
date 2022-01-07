
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aty_pll {int ct; } ;
typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int GTB_DSP ;
 scalar_t__ M64_HAS (int ) ;
 int aty_dsp_gt (struct fb_info const*,int ,int *) ;
 int aty_valid_pll_ct (struct fb_info const*,int ,int *) ;

__attribute__((used)) static int aty_var_to_pll_ct(const struct fb_info *info, u32 vclk_per, u32 bpp, union aty_pll *pll)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 int err;

 if ((err = aty_valid_pll_ct(info, vclk_per, &pll->ct)))
  return err;
 if (M64_HAS(GTB_DSP) && (err = aty_dsp_gt(info, bpp, &pll->ct)))
  return err;

 return 0;
}
