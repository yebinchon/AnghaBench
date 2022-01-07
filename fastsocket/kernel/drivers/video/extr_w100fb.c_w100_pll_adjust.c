
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct w100_pll_info {unsigned int tfgoal; } ;
struct TYPE_4__ {int pll_pwdn; int pll_reset; int pll_tcpoff; int pll_pvg; int pll_vcofr; int pll_ioffset; int pll_ring_off; int pll_dactal; } ;
struct TYPE_5__ {TYPE_1__ f; scalar_t__ val; } ;
struct TYPE_6__ {TYPE_2__ pll_cntl; } ;


 int TESTCLK_SRC_PLL ;
 scalar_t__ mmPLL_CNTL ;
 scalar_t__ remapped_regs ;
 unsigned int w100_get_testcount (int ) ;
 TYPE_3__ w100_pwr_state ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int w100_pll_adjust(struct w100_pll_info *pll)
{
 unsigned int tf80;
 unsigned int tf20;


 w100_pwr_state.pll_cntl.f.pll_pwdn = 0x0;
 w100_pwr_state.pll_cntl.f.pll_reset = 0x0;
 w100_pwr_state.pll_cntl.f.pll_tcpoff = 0x1;
 w100_pwr_state.pll_cntl.f.pll_pvg = 0x0;
 w100_pwr_state.pll_cntl.f.pll_vcofr = 0x0;
 w100_pwr_state.pll_cntl.f.pll_ioffset = 0x0;
 w100_pwr_state.pll_cntl.f.pll_ring_off = 0x0;





 do {

  w100_pwr_state.pll_cntl.f.pll_dactal = 0xd;
  writel((u32) (w100_pwr_state.pll_cntl.val), remapped_regs + mmPLL_CNTL);

  tf80 = w100_get_testcount(TESTCLK_SRC_PLL);
  if (tf80 >= (pll->tfgoal)) {

   w100_pwr_state.pll_cntl.f.pll_dactal = 0x7;
   writel((u32) (w100_pwr_state.pll_cntl.val), remapped_regs + mmPLL_CNTL);

   tf20 = w100_get_testcount(TESTCLK_SRC_PLL);
   if (tf20 <= (pll->tfgoal))
    return 1;

   if ((w100_pwr_state.pll_cntl.f.pll_vcofr == 0x0) &&
    ((w100_pwr_state.pll_cntl.f.pll_pvg == 0x7) ||
    (w100_pwr_state.pll_cntl.f.pll_ioffset == 0x0))) {

    w100_pwr_state.pll_cntl.f.pll_vcofr = 0x1;
    w100_pwr_state.pll_cntl.f.pll_pvg = 0x0;
    w100_pwr_state.pll_cntl.f.pll_ioffset = 0x0;
    continue;
   }
  }
  if ((w100_pwr_state.pll_cntl.f.pll_ioffset) < 0x3) {
   w100_pwr_state.pll_cntl.f.pll_ioffset += 0x1;
  } else if ((w100_pwr_state.pll_cntl.f.pll_pvg) < 0x7) {
   w100_pwr_state.pll_cntl.f.pll_ioffset = 0x0;
   w100_pwr_state.pll_cntl.f.pll_pvg += 0x1;
  } else {
   return 0;
  }
 } while(1);
}
