
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int program_bits; int locationAddr; } ;
union aty_pll {TYPE_1__ ics2595; } ;
typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int CRTC_EXT_DISP_EN ;
 scalar_t__ CRTC_GEN_CNTL ;
 scalar_t__ DAC_REGS ;
 int aty_dac_waste4 (struct atyfb_par*) ;
 char aty_ld_8 (scalar_t__,struct atyfb_par*) ;
 int aty_st_8 (scalar_t__,char,struct atyfb_par*) ;

__attribute__((used)) static void aty_set_pll_1703(const struct fb_info *info,
        const union aty_pll *pll)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 program_bits;
 u32 locationAddr;

 char old_crtc_ext_disp;

 old_crtc_ext_disp = aty_ld_8(CRTC_GEN_CNTL + 3, par);
 aty_st_8(CRTC_GEN_CNTL + 3,
   old_crtc_ext_disp | (CRTC_EXT_DISP_EN >> 24), par);

 program_bits = pll->ics2595.program_bits;
 locationAddr = pll->ics2595.locationAddr;


 aty_dac_waste4(par);

 (void) aty_ld_8(DAC_REGS + 2, par);
 aty_st_8(DAC_REGS + 2, (locationAddr << 1) + 0x20, par);
 aty_st_8(DAC_REGS + 2, 0, par);
 aty_st_8(DAC_REGS + 2, (program_bits & 0xFF00) >> 8, par);
 aty_st_8(DAC_REGS + 2, (program_bits & 0xFF), par);

 (void) aty_ld_8(DAC_REGS, par);
 aty_st_8(CRTC_GEN_CNTL + 3, old_crtc_ext_disp, par);
 return;
}
