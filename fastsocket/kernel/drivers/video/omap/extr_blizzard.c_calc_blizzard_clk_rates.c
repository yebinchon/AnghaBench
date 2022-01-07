
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int BLIZZARD_CLK_SRC ;
 int BLIZZARD_PLL_CLOCK_SYNTH_0 ;
 int BLIZZARD_PLL_CLOCK_SYNTH_1 ;
 int BLIZZARD_PLL_DIV ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,...) ;

__attribute__((used)) static void calc_blizzard_clk_rates(unsigned long ext_clk,
    unsigned long *sys_clk, unsigned long *pix_clk)
{
 int pix_clk_src;
 int sys_div = 0, sys_mul = 0;
 int pix_div;

 pix_clk_src = blizzard_read_reg(BLIZZARD_CLK_SRC);
 pix_div = ((pix_clk_src >> 3) & 0x1f) + 1;
 if ((pix_clk_src & (0x3 << 1)) == 0) {

  sys_div = (blizzard_read_reg(BLIZZARD_PLL_DIV) & 0x3f) + 1;
  sys_mul = blizzard_read_reg(BLIZZARD_PLL_CLOCK_SYNTH_0);
  sys_mul |= ((blizzard_read_reg(BLIZZARD_PLL_CLOCK_SYNTH_1)
    & 0x0f) << 11);
  *sys_clk = ext_clk * sys_mul / sys_div;
 } else
  *sys_clk = ext_clk;

 *pix_clk = *sys_clk / pix_div;
 dev_dbg(blizzard.fbdev->dev,
  "ext_clk %ld pix_src %d pix_div %d sys_div %d sys_mul %d\n",
  ext_clk, pix_clk_src & (0x3 << 1), pix_div, sys_div, sys_mul);
 dev_dbg(blizzard.fbdev->dev, "sys_clk %ld pix_clk %ld\n",
  *sys_clk, *pix_clk);
}
