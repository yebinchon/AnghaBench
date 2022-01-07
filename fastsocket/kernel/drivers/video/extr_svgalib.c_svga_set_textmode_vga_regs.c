
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_ATT_W ;
 int VGA_CRTC_CURSOR_END ;
 int VGA_CRTC_CURSOR_HI ;
 int VGA_CRTC_CURSOR_LO ;
 int VGA_CRTC_CURSOR_START ;
 int VGA_CRTC_MAX_SCAN ;
 int VGA_CRTC_MODE ;
 int VGA_CRTC_UNDERLINE ;
 int VGA_GFX_COMPARE_MASK ;
 int VGA_GFX_MISC ;
 int VGA_GFX_MODE ;
 int VGA_SEQ_MEMORY_MODE ;
 int VGA_SEQ_PLANE_WRITE ;
 int VGA_SR04_EXT_MEM ;
 int svga_wattr (int,int) ;
 int svga_wcrt_mask (int ,int,int) ;
 int vga_r (int *,int) ;
 int vga_w (int *,int ,int) ;
 int vga_wcrt (int *,int ,int) ;
 int vga_wgfx (int *,int ,int) ;
 int vga_wseq (int *,int ,int) ;

void svga_set_textmode_vga_regs(void)
{

 vga_wseq(((void*)0), VGA_SEQ_MEMORY_MODE, VGA_SR04_EXT_MEM);
 vga_wseq(((void*)0), VGA_SEQ_PLANE_WRITE, 0x03);

 vga_wcrt(((void*)0), VGA_CRTC_MAX_SCAN, 0x0f);
 vga_wcrt(((void*)0), VGA_CRTC_UNDERLINE, 0x1f);
 svga_wcrt_mask(VGA_CRTC_MODE, 0x23, 0x7f);

 vga_wcrt(((void*)0), VGA_CRTC_CURSOR_START, 0x0d);
 vga_wcrt(((void*)0), VGA_CRTC_CURSOR_END, 0x0e);
 vga_wcrt(((void*)0), VGA_CRTC_CURSOR_HI, 0x00);
 vga_wcrt(((void*)0), VGA_CRTC_CURSOR_LO, 0x00);

 vga_wgfx(((void*)0), VGA_GFX_MODE, 0x10);
 vga_wgfx(((void*)0), VGA_GFX_MISC, 0x0E);
 vga_wgfx(((void*)0), VGA_GFX_COMPARE_MASK, 0x00);

 vga_r(((void*)0), 0x3DA);
 vga_w(((void*)0), VGA_ATT_W, 0x00);

 svga_wattr(0x10, 0x0C);
 svga_wattr(0x13, 0x08);

 vga_r(((void*)0), 0x3DA);
 vga_w(((void*)0), VGA_ATT_W, 0x20);
}
