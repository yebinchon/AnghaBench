
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int length; } ;
struct fb_var_screeninfo {int xres; int yres; int xres_virtual; int yres_virtual; int xoffset; int yoffset; int bits_per_pixel; int sync; int vmode; int right_margin; int hsync_len; int left_margin; int lower_margin; int vsync_len; int upper_margin; int activate; TYPE_1__ green; } ;
struct TYPE_4__ {int smem_len; } ;
struct fb_info {TYPE_2__ fix; scalar_t__ par; } ;
struct crtc {int lcd_index; int lcd_config_panel; int lcd_gen_cntl; int vxres; int vyres; int xoffset; int yoffset; int bpp; int off_pitch; int h_tot_disp; int h_sync_strt_wid; int v_tot_disp; int v_sync_strt_wid; int gen_cntl; int horz_stretching; int ext_vert_stretch; int vert_stretching; int shadow_h_tot_disp; int shadow_h_sync_strt_wid; int shadow_v_tot_disp; int shadow_v_sync_strt_wid; int dp_pix_width; int dp_chain_mask; scalar_t__ vline_crnt_vline; } ;
struct atyfb_par {scalar_t__ lcd_table; int lcd_width; int lcd_height; int lcd_right_margin; int lcd_hsync_len; int lcd_hsync_dly; int lcd_hblank_len; int lcd_lower_margin; int lcd_vsync_len; int lcd_vblank_len; } ;


 int ATIReduceRatio (int*,int*) ;
 int AUTO_HORZ_RATIO ;
 int AUTO_VERT_RATIO ;
 int BYTE_ORDER_LSB_TO_MSB ;
 int CNFG_PANEL ;
 int CRTC2_DISPLAY_DIS ;
 int CRTC2_EN ;
 int CRTC2_PIX_WIDTH ;
 int CRTC_CSYNC_EN ;
 int CRTC_DBL_SCAN_EN ;
 int CRTC_EN ;
 int CRTC_EXT_DISP_EN ;
 int CRTC_FIFO_LWM ;
 int CRTC_GEN_CNTL ;
 int CRTC_INTERLACE_EN ;
 int CRTC_PIX_WIDTH_15BPP ;
 int CRTC_PIX_WIDTH_16BPP ;
 int CRTC_PIX_WIDTH_24BPP ;
 int CRTC_PIX_WIDTH_32BPP ;
 int CRTC_PIX_WIDTH_8BPP ;
 int CRTC_RW_SELECT ;
 int CRTC_VGA_LINEAR ;
 int CRT_ON ;
 int DIS_HOR_CRT_DIVBY2 ;
 int DONT_SHADOW_VPAR ;
 int DP_CHAIN_15BPP ;
 int DP_CHAIN_16BPP ;
 int DP_CHAIN_24BPP ;
 int DP_CHAIN_32BPP ;
 int DP_CHAIN_8BPP ;
 int DST_15BPP ;
 int DST_16BPP ;
 int DST_32BPP ;
 int DST_8BPP ;
 int EINVAL ;
 int EXT_VERT_STRETCH ;
 int FAIL (char*) ;
 int FAIL_MAX (char*,int,int) ;
 int FB_ACTIVATE_TEST ;
 int FB_SYNC_COMP_HIGH_ACT ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int HORZ_DIVBY2_EN ;
 int HORZ_STRETCHING ;
 int HORZ_STRETCH_BLEND ;
 int HORZ_STRETCH_EN ;
 int HORZ_STRETCH_LOOP ;
 int HORZ_STRETCH_MODE ;
 int HORZ_STRETCH_RATIO ;
 int HOST_15BPP ;
 int HOST_16BPP ;
 int HOST_32BPP ;
 int HOST_8BPP ;
 int INTEGRATED ;
 int LCD_DISPLAY_DIS ;
 int LCD_GEN_CNTL ;
 int LCD_INDEX ;
 int LCD_INDEX_MASK ;
 int LCD_ON ;
 int LCD_SRC_SEL ;
 int LOCK_8DOT ;
 int LT_LCD_REGS ;
 scalar_t__ M64_HAS (int ) ;
 int MAGIC_FIFO ;
 int MOBIL_BUS ;
 int PRINTKE (char*) ;
 int PRINTKI (char*) ;
 int SHADOW_EN ;
 int SHADOW_RW_EN ;
 int SRC_15BPP ;
 int SRC_16BPP ;
 int SRC_32BPP ;
 int SRC_8BPP ;
 int TVCLK_PM_EN ;
 int USE_SHADOWED_ROWCUR ;
 int USE_SHADOWED_VEND ;
 int VERT_STRETCH_EN ;
 int VERT_STRETCH_MODE ;
 int VERT_STRETCH_RATIO0 ;
 int VERT_STRETCH_RATIO3 ;
 int VERT_STRETCH_USE0 ;
 int aty_ld_lcd (int ,struct atyfb_par*) ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int calc_line_length (struct atyfb_par*,int,int) ;

__attribute__((used)) static int aty_var_to_crtc(const struct fb_info *info,
      const struct fb_var_screeninfo *var,
      struct crtc *crtc)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 xres, yres, vxres, vyres, xoffset, yoffset, bpp;
 u32 sync, vmode, vdisplay;
 u32 h_total, h_disp, h_sync_strt, h_sync_end, h_sync_dly, h_sync_wid, h_sync_pol;
 u32 v_total, v_disp, v_sync_strt, v_sync_end, v_sync_wid, v_sync_pol, c_sync;
 u32 pix_width, dp_pix_width, dp_chain_mask;
 u32 line_length;


 xres = (var->xres + 7) & ~7;
 yres = var->yres;
 vxres = (var->xres_virtual + 7) & ~7;
 vyres = var->yres_virtual;
 xoffset = (var->xoffset + 7) & ~7;
 yoffset = var->yoffset;
 bpp = var->bits_per_pixel;
 if (bpp == 16)
  bpp = (var->green.length == 5) ? 15 : 16;
 sync = var->sync;
 vmode = var->vmode;


 if (vxres < xres + xoffset)
  vxres = xres + xoffset;
 h_disp = xres;

 if (vyres < yres + yoffset)
  vyres = yres + yoffset;
 v_disp = yres;

 if (bpp <= 8) {
  bpp = 8;
  pix_width = CRTC_PIX_WIDTH_8BPP;
  dp_pix_width = HOST_8BPP | SRC_8BPP | DST_8BPP |
   BYTE_ORDER_LSB_TO_MSB;
  dp_chain_mask = DP_CHAIN_8BPP;
 } else if (bpp <= 15) {
  bpp = 16;
  pix_width = CRTC_PIX_WIDTH_15BPP;
  dp_pix_width = HOST_15BPP | SRC_15BPP | DST_15BPP |
   BYTE_ORDER_LSB_TO_MSB;
  dp_chain_mask = DP_CHAIN_15BPP;
 } else if (bpp <= 16) {
  bpp = 16;
  pix_width = CRTC_PIX_WIDTH_16BPP;
  dp_pix_width = HOST_16BPP | SRC_16BPP | DST_16BPP |
   BYTE_ORDER_LSB_TO_MSB;
  dp_chain_mask = DP_CHAIN_16BPP;
 } else if (bpp <= 24 && M64_HAS(INTEGRATED)) {
  bpp = 24;
  pix_width = CRTC_PIX_WIDTH_24BPP;
  dp_pix_width = HOST_8BPP | SRC_8BPP | DST_8BPP |
   BYTE_ORDER_LSB_TO_MSB;
  dp_chain_mask = DP_CHAIN_24BPP;
 } else if (bpp <= 32) {
  bpp = 32;
  pix_width = CRTC_PIX_WIDTH_32BPP;
  dp_pix_width = HOST_32BPP | SRC_32BPP | DST_32BPP |
   BYTE_ORDER_LSB_TO_MSB;
  dp_chain_mask = DP_CHAIN_32BPP;
 } else
  FAIL("invalid bpp");

 line_length = calc_line_length(par, vxres, bpp);

 if (vyres * line_length > info->fix.smem_len)
  FAIL("not enough video RAM");

 h_sync_pol = sync & FB_SYNC_HOR_HIGH_ACT ? 0 : 1;
 v_sync_pol = sync & FB_SYNC_VERT_HIGH_ACT ? 0 : 1;

 if ((xres > 1600) || (yres > 1200)) {
  FAIL("MACH64 chips are designed for max 1600x1200\n"
       "select anoter resolution.");
 }
 h_sync_strt = h_disp + var->right_margin;
 h_sync_end = h_sync_strt + var->hsync_len;
 h_sync_dly = var->right_margin & 7;
 h_total = h_sync_end + h_sync_dly + var->left_margin;

 v_sync_strt = v_disp + var->lower_margin;
 v_sync_end = v_sync_strt + var->vsync_len;
 v_total = v_sync_end + var->upper_margin;
 h_disp = (h_disp >> 3) - 1;
 h_sync_strt = (h_sync_strt >> 3) - 1;
 h_sync_end = (h_sync_end >> 3) - 1;
 h_total = (h_total >> 3) - 1;
 h_sync_wid = h_sync_end - h_sync_strt;

 FAIL_MAX("h_disp too large", h_disp, 0xff);
 FAIL_MAX("h_sync_strt too large", h_sync_strt, 0x1ff);

 if (h_sync_wid > 0x1f)
  h_sync_wid = 0x1f;
 FAIL_MAX("h_total too large", h_total, 0x1ff);

 if (vmode & FB_VMODE_DOUBLE) {
  v_disp <<= 1;
  v_sync_strt <<= 1;
  v_sync_end <<= 1;
  v_total <<= 1;
 }

 vdisplay = yres;





 v_disp--;
 v_sync_strt--;
 v_sync_end--;
 v_total--;
 v_sync_wid = v_sync_end - v_sync_strt;

 FAIL_MAX("v_disp too large", v_disp, 0x7ff);
 FAIL_MAX("v_sync_stsrt too large", v_sync_strt, 0x7ff);

 if (v_sync_wid > 0x1f)
  v_sync_wid = 0x1f;
 FAIL_MAX("v_total too large", v_total, 0x7ff);

 c_sync = sync & FB_SYNC_COMP_HIGH_ACT ? CRTC_CSYNC_EN : 0;


 crtc->vxres = vxres;
 crtc->vyres = vyres;
 crtc->xoffset = xoffset;
 crtc->yoffset = yoffset;
 crtc->bpp = bpp;
 crtc->off_pitch =
  ((yoffset * line_length + xoffset * bpp / 8) / 8) |
  ((line_length / bpp) << 22);
 crtc->vline_crnt_vline = 0;

 crtc->h_tot_disp = h_total | (h_disp << 16);
 crtc->h_sync_strt_wid = (h_sync_strt & 0xff) | (h_sync_dly << 8) |
  ((h_sync_strt & 0x100) << 4) | (h_sync_wid << 16) |
  (h_sync_pol << 21);
 crtc->v_tot_disp = v_total | (v_disp << 16);
 crtc->v_sync_strt_wid = v_sync_strt | (v_sync_wid << 16) |
  (v_sync_pol << 21);


 crtc->gen_cntl = CRTC_EXT_DISP_EN | CRTC_EN | pix_width | c_sync;
 crtc->gen_cntl |= CRTC_VGA_LINEAR;


 if (vmode & FB_VMODE_DOUBLE)
  crtc->gen_cntl |= CRTC_DBL_SCAN_EN;

 if (vmode & FB_VMODE_INTERLACED)
  crtc->gen_cntl |= CRTC_INTERLACE_EN;
 if (M64_HAS(MAGIC_FIFO)) {

  crtc->gen_cntl |= (aty_ld_le32(CRTC_GEN_CNTL, par) & CRTC_FIFO_LWM);
 }
 crtc->dp_pix_width = dp_pix_width;
 crtc->dp_chain_mask = dp_chain_mask;

 return 0;
}
