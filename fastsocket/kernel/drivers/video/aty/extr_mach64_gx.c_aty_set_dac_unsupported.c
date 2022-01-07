
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aty_pll {int dummy; } aty_pll ;
typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int BUS_CNTL ;
 int DAC_CNTL ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;

__attribute__((used)) static int aty_set_dac_unsupported(const struct fb_info *info,
       const union aty_pll *pll, u32 bpp,
       u32 accel)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;

 aty_st_le32(BUS_CNTL, 0x890e20f1, par);
 aty_st_le32(DAC_CNTL, 0x47052100, par);

 aty_st_le32(BUS_CNTL, 0x590e10ff, par);
 aty_st_le32(DAC_CNTL, 0x47012100, par);
 return 0;
}
