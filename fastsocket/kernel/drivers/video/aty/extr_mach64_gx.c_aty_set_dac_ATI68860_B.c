
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union aty_pll {int dummy; } aty_pll ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int A860_DELAY_L ;
 scalar_t__ BUS_CNTL ;
 scalar_t__ DAC_CNTL ;
 int DAC_EXT_SEL_RS2 ;
 int DAC_EXT_SEL_RS3 ;
 scalar_t__ DAC_REGS ;
 scalar_t__ ONE_MB ;
 int aty_ld_8 (scalar_t__,struct atyfb_par*) ;
 int aty_st_8 (scalar_t__,int,struct atyfb_par*) ;
 int aty_st_le32 (scalar_t__,int,struct atyfb_par*) ;

__attribute__((used)) static int aty_set_dac_ATI68860_B(const struct fb_info *info,
      const union aty_pll *pll, u32 bpp,
      u32 accel)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 gModeReg, devSetupRegA, temp, mask;

 gModeReg = 0;
 devSetupRegA = 0;

 switch (bpp) {
 case 8:
  gModeReg = 0x83;
  devSetupRegA =
      0x60 | 0x00 ;
  break;
 case 15:
  gModeReg = 0xA0;
  devSetupRegA = 0x60;
  break;
 case 16:
  gModeReg = 0xA1;
  devSetupRegA = 0x60;
  break;
 case 24:
  gModeReg = 0xC0;
  devSetupRegA = 0x60;
  break;
 case 32:
  gModeReg = 0xE3;
  devSetupRegA = 0x60;
  break;
 }

 if (!accel) {
  gModeReg = 0x80;
  devSetupRegA = 0x61;
 }

 temp = aty_ld_8(DAC_CNTL, par);
 aty_st_8(DAC_CNTL, (temp & ~DAC_EXT_SEL_RS2) | DAC_EXT_SEL_RS3,
   par);

 aty_st_8(DAC_REGS + 2, 0x1D, par);
 aty_st_8(DAC_REGS + 3, gModeReg, par);
 aty_st_8(DAC_REGS, 0x02, par);

 temp = aty_ld_8(DAC_CNTL, par);
 aty_st_8(DAC_CNTL, temp | DAC_EXT_SEL_RS2 | DAC_EXT_SEL_RS3, par);

 if (info->fix.smem_len < ONE_MB)
  mask = 0x04;
 else if (info->fix.smem_len == ONE_MB)
  mask = 0x08;
 else
  mask = 0x0C;






 temp = aty_ld_8(DAC_REGS, par);
 aty_st_8(DAC_REGS, (devSetupRegA | mask) | (temp & 0x80),
   par);
 temp = aty_ld_8(DAC_CNTL, par);
 aty_st_8(DAC_CNTL, (temp & ~(DAC_EXT_SEL_RS2 | DAC_EXT_SEL_RS3)),
   par);

 aty_st_le32(BUS_CNTL, 0x890e20f1, par);
 aty_st_le32(DAC_CNTL, 0x47052100, par);
 return 0;
}
