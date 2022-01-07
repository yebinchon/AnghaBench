
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atyfb_par {scalar_t__ clk_wr_offset; } ;


 scalar_t__ CLOCK_CNTL ;
 int aty_StrobeClock (struct atyfb_par const*) ;
 int aty_ld_8 (scalar_t__,struct atyfb_par const*) ;
 int aty_st_8 (scalar_t__,int,struct atyfb_par const*) ;

__attribute__((used)) static void aty_ICS2595_put1bit(u8 data, const struct atyfb_par *par)
{
 u8 tmp;

 data &= 0x01;
 tmp = aty_ld_8(CLOCK_CNTL, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset,
   (tmp & ~0x04) | (data << 2), par);

 tmp = aty_ld_8(CLOCK_CNTL, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, (tmp & ~0x08) | (0 << 3),
   par);

 aty_StrobeClock(par);

 tmp = aty_ld_8(CLOCK_CNTL, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, (tmp & ~0x08) | (1 << 3),
   par);

 aty_StrobeClock(par);
 return;
}
