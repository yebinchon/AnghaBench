
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int errata; } ;


 int CHIP_ERRATA_PLL_DUMMYREADS ;
 int CLOCK_CNTL_DATA ;
 int CRTC_GEN_CNTL ;
 int INREG (int ) ;

__attribute__((used)) static inline void radeon_pll_errata_after_index(struct radeonfb_info *rinfo)
{
 if (!(rinfo->errata & CHIP_ERRATA_PLL_DUMMYREADS))
  return;

 (void)INREG(CLOCK_CNTL_DATA);
 (void)INREG(CRTC_GEN_CNTL);
}
