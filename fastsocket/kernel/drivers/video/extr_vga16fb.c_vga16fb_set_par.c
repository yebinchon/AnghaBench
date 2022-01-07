
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vga16fb_par {int clkdiv; int mode; int* crtc; int misc; int pel_msk; scalar_t__ isVGA; } ;
struct TYPE_2__ {int xoffset; } ;
struct fb_info {TYPE_1__ var; struct vga16fb_par* par; } ;


 int EGA_GFX_E0 ;
 int EGA_GFX_E1 ;
 int MODE_8BPP ;
 int MODE_CFB ;
 int MODE_SKIP4 ;
 int MODE_TEXT ;
 size_t VGA_ATC_COLOR_PAGE ;
 size_t VGA_ATC_MODE ;
 size_t VGA_ATC_OVERSCAN ;
 size_t VGA_ATC_PEL ;
 size_t VGA_ATC_PLANE_ENABLE ;
 int VGA_ATT_C ;
 int VGA_ATT_IW ;
 size_t VGA_CRTC_MAX_SCAN ;
 int VGA_CRTC_REGS ;
 size_t VGA_CRTC_V_SYNC_END ;
 size_t VGA_GFX_BIT_MASK ;
 int VGA_GFX_C ;
 size_t VGA_GFX_COMPARE_MASK ;
 size_t VGA_GFX_COMPARE_VALUE ;
 size_t VGA_GFX_DATA_ROTATE ;
 size_t VGA_GFX_MISC ;
 size_t VGA_GFX_MODE ;
 size_t VGA_GFX_PLANE_READ ;
 size_t VGA_GFX_SR_ENABLE ;
 size_t VGA_GFX_SR_VALUE ;
 int VGA_IS1_RC ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int VGA_PEL_MSK ;
 int VGA_SEQ_C ;
 size_t VGA_SEQ_CHARACTER_MAP ;
 size_t VGA_SEQ_CLOCK_MODE ;
 size_t VGA_SEQ_MEMORY_MODE ;
 size_t VGA_SEQ_PLANE_WRITE ;
 int mdelay (int) ;
 int vga16fb_update_fix (struct fb_info*) ;
 int vga_io_r (int ) ;
 int vga_io_w (int ,int) ;
 int vga_io_wattr (int,int) ;
 int vga_io_wcrt (int,int) ;
 int vga_io_wgfx (int,int) ;
 int vga_io_wseq (size_t,int) ;

__attribute__((used)) static int vga16fb_set_par(struct fb_info *info)
{
 struct vga16fb_par *par = info->par;
 u8 gdc[VGA_GFX_C];
 u8 seq[VGA_SEQ_C];
 u8 atc[VGA_ATT_C];
 int fh, i;

 seq[VGA_SEQ_CLOCK_MODE] = 0x01 | par->clkdiv;
 if (par->mode & MODE_TEXT)
  seq[VGA_SEQ_PLANE_WRITE] = 0x03;
 else
  seq[VGA_SEQ_PLANE_WRITE] = 0x0F;
 seq[VGA_SEQ_CHARACTER_MAP] = 0x00;
 if (par->mode & MODE_TEXT)
  seq[VGA_SEQ_MEMORY_MODE] = 0x03;
 else if (par->mode & MODE_SKIP4)
  seq[VGA_SEQ_MEMORY_MODE] = 0x0E;
 else
  seq[VGA_SEQ_MEMORY_MODE] = 0x06;

 gdc[VGA_GFX_SR_VALUE] = 0x00;
 gdc[VGA_GFX_SR_ENABLE] = 0x00;
 gdc[VGA_GFX_COMPARE_VALUE] = 0x00;
 gdc[VGA_GFX_DATA_ROTATE] = 0x00;
 gdc[VGA_GFX_PLANE_READ] = 0;
 if (par->mode & MODE_TEXT) {
  gdc[VGA_GFX_MODE] = 0x10;
  gdc[VGA_GFX_MISC] = 0x06;
 } else {
  if (par->mode & MODE_CFB)
   gdc[VGA_GFX_MODE] = 0x40;
  else
   gdc[VGA_GFX_MODE] = 0x00;
  gdc[VGA_GFX_MISC] = 0x05;
 }
 gdc[VGA_GFX_COMPARE_MASK] = 0x0F;
 gdc[VGA_GFX_BIT_MASK] = 0xFF;

 for (i = 0x00; i < 0x10; i++)
  atc[i] = i;
 if (par->mode & MODE_TEXT)
  atc[VGA_ATC_MODE] = 0x04;
 else if (par->mode & MODE_8BPP)
  atc[VGA_ATC_MODE] = 0x41;
 else
  atc[VGA_ATC_MODE] = 0x81;
 atc[VGA_ATC_OVERSCAN] = 0x00;
 atc[VGA_ATC_PLANE_ENABLE] = 0x0F;
 if (par->mode & MODE_8BPP)
  atc[VGA_ATC_PEL] = (info->var.xoffset & 3) << 1;
 else
  atc[VGA_ATC_PEL] = info->var.xoffset & 7;
 atc[VGA_ATC_COLOR_PAGE] = 0x00;

 if (par->mode & MODE_TEXT) {
  fh = 16;
  par->crtc[VGA_CRTC_MAX_SCAN] = (par->crtc[VGA_CRTC_MAX_SCAN]
            & ~0x1F) | (fh - 1);
 }

 vga_io_w(VGA_MIS_W, vga_io_r(VGA_MIS_R) | 0x01);


 if (!par->isVGA) {
  vga_io_w(EGA_GFX_E0, 0x00);
  vga_io_w(EGA_GFX_E1, 0x01);
 }


 vga_io_w(VGA_MIS_W, par->misc);


 vga_io_wseq(0x00, 0x01);

 if (par->isVGA)
  vga_io_w(VGA_PEL_MSK, par->pel_msk);


 vga_io_wseq(VGA_SEQ_CLOCK_MODE, seq[VGA_SEQ_CLOCK_MODE] | 0x20);
 for (i = 2; i < VGA_SEQ_C; i++) {
  vga_io_wseq(i, seq[i]);
 }


 vga_io_wseq(0x00, 0x03);


 vga_io_wcrt(VGA_CRTC_V_SYNC_END, par->crtc[VGA_CRTC_V_SYNC_END]);


 for (i = 0; i < VGA_CRTC_REGS; i++) {
  vga_io_wcrt(i, par->crtc[i]);
 }


 for (i = 0; i < VGA_GFX_C; i++) {
  vga_io_wgfx(i, gdc[i]);
 }


 for (i = 0; i < VGA_ATT_C; i++) {
  vga_io_r(VGA_IS1_RC);
  vga_io_wattr(i, atc[i]);
 }


 mdelay(50);

 vga_io_wseq(VGA_SEQ_CLOCK_MODE, seq[VGA_SEQ_CLOCK_MODE]);

 vga_io_r(VGA_IS1_RC);
 vga_io_w(VGA_ATT_IW, 0x20);

 vga16fb_update_fix(info);
 return 0;
}
