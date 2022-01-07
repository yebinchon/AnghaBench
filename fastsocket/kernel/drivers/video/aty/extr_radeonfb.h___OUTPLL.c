
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int dummy; } ;


 int CLOCK_CNTL_DATA ;
 int CLOCK_CNTL_INDEX ;
 int OUTREG (int ,int ) ;
 int OUTREG8 (int ,unsigned int) ;
 int radeon_pll_errata_after_data (struct radeonfb_info*) ;
 int radeon_pll_errata_after_index (struct radeonfb_info*) ;

__attribute__((used)) static inline void __OUTPLL(struct radeonfb_info *rinfo, unsigned int index,
       u32 val)
{

 OUTREG8(CLOCK_CNTL_INDEX, (index & 0x0000003f) | 0x00000080);
 radeon_pll_errata_after_index(rinfo);
 OUTREG(CLOCK_CNTL_DATA, val);
 radeon_pll_errata_after_data(rinfo);
}
