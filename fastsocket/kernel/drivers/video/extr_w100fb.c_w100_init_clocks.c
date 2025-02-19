
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct w100fb_par {scalar_t__ fastpll_mode; struct w100_mode* mode; } ;
struct w100_mode {scalar_t__ pixclk_src; scalar_t__ sysclk_src; int sysclk_divider; scalar_t__ pll_freq; scalar_t__ fast_pll_freq; } ;
struct TYPE_4__ {scalar_t__ sclk_src_sel; int sclk_post_div_slow; int sclk_post_div_fast; } ;
struct TYPE_5__ {scalar_t__ val; TYPE_1__ f; } ;
struct TYPE_6__ {TYPE_2__ sclk_cntl; } ;


 scalar_t__ CLK_SRC_PLL ;
 scalar_t__ mmSCLK_CNTL ;
 scalar_t__ remapped_regs ;
 TYPE_3__ w100_pwr_state ;
 int w100_set_pll_freq (struct w100fb_par*,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void w100_init_clocks(struct w100fb_par *par)
{
 struct w100_mode *mode = par->mode;

 if (mode->pixclk_src == CLK_SRC_PLL || mode->sysclk_src == CLK_SRC_PLL)
  w100_set_pll_freq(par, (par->fastpll_mode && mode->fast_pll_freq) ? mode->fast_pll_freq : mode->pll_freq);

 w100_pwr_state.sclk_cntl.f.sclk_src_sel = mode->sysclk_src;
 w100_pwr_state.sclk_cntl.f.sclk_post_div_fast = mode->sysclk_divider;
 w100_pwr_state.sclk_cntl.f.sclk_post_div_slow = mode->sysclk_divider;
 writel((u32) (w100_pwr_state.sclk_cntl.val), remapped_regs + mmSCLK_CNTL);
}
