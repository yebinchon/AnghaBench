
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct par_info {int clock_mult; int clock_div; } ;
struct fb_var_screeninfo {int pixclock; } ;
struct cfb_info {int ref_ps; int* divisors; } ;


 int EINVAL ;
 int EXT_DCLK_DIV_VFSEL ;

__attribute__((used)) static int
cyber2000fb_decode_clock(struct par_info *hw, struct cfb_info *cfb,
    struct fb_var_screeninfo *var)
{
 u_long pll_ps = var->pixclock;
 const u_long ref_ps = cfb->ref_ps;
 u_int div2, t_div1, best_div1, best_mult;
 int best_diff;
 int vco;






 for (div2 = 0; div2 < 4; div2++) {
  u_long new_pll;

  new_pll = pll_ps / cfb->divisors[div2];
  if (8696 > new_pll && new_pll > 3846) {
   pll_ps = new_pll;
   break;
  }
 }

 if (div2 == 4)
  return -EINVAL;
 best_diff = 0x7fffffff;
 best_mult = 32;
 best_div1 = 255;
 for (t_div1 = 32; t_div1 > 1; t_div1 -= 1) {
  u_int rr, t_mult, t_pll_ps;
  int diff;




  rr = ref_ps * t_div1;
  t_mult = (rr + pll_ps / 2) / pll_ps;




  if (t_mult > 256 || t_mult < 2)
   continue;





  t_pll_ps = (rr + t_mult / 2) / t_mult;
  diff = pll_ps - t_pll_ps;
  if (diff < 0)
   diff = -diff;

  if (diff < best_diff) {
   best_diff = diff;
   best_mult = t_mult;
   best_div1 = t_div1;
  }




  if (diff == 0)
   break;
 }





 hw->clock_mult = best_mult - 1;
 hw->clock_div = div2 << 6 | (best_div1 - 1);

 vco = ref_ps * best_div1 / best_mult;
 if ((ref_ps == 40690) && (vco < 5556))

  hw->clock_div |= EXT_DCLK_DIV_VFSEL;

 return 0;
}
