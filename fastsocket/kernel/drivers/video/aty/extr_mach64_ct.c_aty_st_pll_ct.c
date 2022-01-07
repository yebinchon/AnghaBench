
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atyfb_par {int dummy; } ;


 int CLOCK_CNTL_ADDR ;
 int CLOCK_CNTL_DATA ;
 int PLL_ADDR ;
 int PLL_DATA ;
 int PLL_WR_EN ;
 int aty_st_8 (int ,int,struct atyfb_par const*) ;

__attribute__((used)) static void aty_st_pll_ct(int offset, u8 val, const struct atyfb_par *par)
{

 aty_st_8(CLOCK_CNTL_ADDR, ((offset << 2) & PLL_ADDR) | PLL_WR_EN, par);

 aty_st_8(CLOCK_CNTL_DATA, val & PLL_DATA, par);
 aty_st_8(CLOCK_CNTL_ADDR, ((offset << 2) & PLL_ADDR) & ~PLL_WR_EN, par);
}
