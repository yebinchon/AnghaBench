
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * fir_hinc; int * fir_vinc; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int DISPC_BURST_8x32 ;
 int const DISPC_GFX_ATTRIBUTES ;
 int const DISPC_GFX_BA0 ;
 int const DISPC_GFX_POSITION ;
 int const DISPC_GFX_ROW_INC ;
 int const DISPC_GFX_SIZE ;
 int DISPC_RGB_16_BPP ;
 int DISPC_UYVY_422 ;
 int const DISPC_VID1_BASE ;
 int const DISPC_VID2_BASE ;
 int const DISPC_VID_ATTRIBUTES ;
 int const DISPC_VID_BA0 ;
 int const DISPC_VID_PICTURE_SIZE ;
 int const DISPC_VID_POSITION ;
 int const DISPC_VID_ROW_INC ;
 int const DISPC_VID_SIZE ;
 int DISPC_YUV2_422 ;
 int EINVAL ;
 int FLD_MASK (int,int) ;
 int MOD_REG_FLD (int const,int,int) ;
 int dev_dbg (int ,char*,int,int,int,int,int,int,int,int,int) ;
 TYPE_2__ dispc ;
 int dispc_read_reg (int const) ;
 int dispc_write_reg (int const,int) ;

__attribute__((used)) static inline int _setup_plane(int plane, int channel_out,
      u32 paddr, int screen_width,
      int pos_x, int pos_y, int width, int height,
      int color_mode)
{
 const u32 at_reg[] = { DISPC_GFX_ATTRIBUTES,
    DISPC_VID1_BASE + DISPC_VID_ATTRIBUTES,
           DISPC_VID2_BASE + DISPC_VID_ATTRIBUTES };
 const u32 ba_reg[] = { DISPC_GFX_BA0, DISPC_VID1_BASE + DISPC_VID_BA0,
    DISPC_VID2_BASE + DISPC_VID_BA0 };
 const u32 ps_reg[] = { DISPC_GFX_POSITION,
    DISPC_VID1_BASE + DISPC_VID_POSITION,
    DISPC_VID2_BASE + DISPC_VID_POSITION };
 const u32 sz_reg[] = { DISPC_GFX_SIZE,
    DISPC_VID1_BASE + DISPC_VID_PICTURE_SIZE,
    DISPC_VID2_BASE + DISPC_VID_PICTURE_SIZE };
 const u32 ri_reg[] = { DISPC_GFX_ROW_INC,
    DISPC_VID1_BASE + DISPC_VID_ROW_INC,
           DISPC_VID2_BASE + DISPC_VID_ROW_INC };
 const u32 vs_reg[] = { 0, DISPC_VID1_BASE + DISPC_VID_SIZE,
    DISPC_VID2_BASE + DISPC_VID_SIZE };

 int chout_shift, burst_shift;
 int chout_val;
 int color_code;
 int bpp;
 int cconv_en;
 int set_vsize;
 u32 l;
 set_vsize = 0;
 switch (plane) {
 case 130:
  burst_shift = 6;
  chout_shift = 8;
  break;
 case 129:
 case 128:
  burst_shift = 14;
  chout_shift = 16;
  set_vsize = 1;
  break;
 default:
  return -EINVAL;
 }

 switch (channel_out) {
 case 134:
  chout_val = 0;
  break;
 case 135:
  chout_val = 1;
  break;
 default:
  return -EINVAL;
 }

 cconv_en = 0;
 switch (color_mode) {
 case 133:
  color_code = DISPC_RGB_16_BPP;
  bpp = 16;
  break;
 case 132:
  if (plane == 0)
   return -EINVAL;
  color_code = DISPC_UYVY_422;
  cconv_en = 1;
  bpp = 16;
  break;
 case 131:
  if (plane == 0)
   return -EINVAL;
  color_code = DISPC_YUV2_422;
  cconv_en = 1;
  bpp = 16;
  break;
 default:
  return -EINVAL;
 }

 l = dispc_read_reg(at_reg[plane]);

 l &= ~(0x0f << 1);
 l |= color_code << 1;
 l &= ~(1 << 9);
 l |= cconv_en << 9;

 l &= ~(0x03 << burst_shift);
 l |= DISPC_BURST_8x32 << burst_shift;

 l &= ~(1 << chout_shift);
 l |= chout_val << chout_shift;

 dispc_write_reg(at_reg[plane], l);

 dispc_write_reg(ba_reg[plane], paddr);
 MOD_REG_FLD(ps_reg[plane],
      FLD_MASK(16, 11) | FLD_MASK(0, 11), (pos_y << 16) | pos_x);

 MOD_REG_FLD(sz_reg[plane], FLD_MASK(16, 11) | FLD_MASK(0, 11),
   ((height - 1) << 16) | (width - 1));

 if (set_vsize) {

  if (!dispc.fir_vinc[plane])
   MOD_REG_FLD(vs_reg[plane],
    FLD_MASK(16, 11), (height - 1) << 16);
  if (!dispc.fir_hinc[plane])
   MOD_REG_FLD(vs_reg[plane],
    FLD_MASK(0, 11), width - 1);
 }

 dispc_write_reg(ri_reg[plane], (screen_width - width) * bpp / 8 + 1);

 return height * screen_width * bpp / 8;
}
