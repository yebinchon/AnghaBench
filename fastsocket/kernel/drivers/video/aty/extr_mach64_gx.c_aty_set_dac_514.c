
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aty_pll {int dummy; } aty_pll ;
typedef int u8 ;
typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int aty_st_514 (int,int,struct atyfb_par*) ;

__attribute__((used)) static int aty_set_dac_514(const struct fb_info *info,
      const union aty_pll *pll, u32 bpp, u32 accel)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 static struct {
  u8 pixel_dly;
  u8 misc2_cntl;
  u8 pixel_rep;
  u8 pixel_cntl_index;
  u8 pixel_cntl_v1;
 } tab[3] = {
  {
  0, 0x41, 0x03, 0x71, 0x45},
  {
  0, 0x45, 0x04, 0x0c, 0x01},
  {
  0, 0x45, 0x06, 0x0e, 0x00},
 };
 int i;

 switch (bpp) {
 case 8:
 default:
  i = 0;
  break;
 case 16:
  i = 1;
  break;
 case 32:
  i = 2;
  break;
 }
 aty_st_514(0x90, 0x00, par);
 aty_st_514(0x04, tab[i].pixel_dly, par);
 aty_st_514(0x05, 0x00, par);
 aty_st_514(0x02, 0x01, par);
 aty_st_514(0x71, tab[i].misc2_cntl, par);
 aty_st_514(0x0a, tab[i].pixel_rep, par);
 aty_st_514(tab[i].pixel_cntl_index, tab[i].pixel_cntl_v1, par);

 return 0;
}
