
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_CRTC_MAX_SCAN ;
 int VGA_CRTC_MODE ;
 int VGA_CRTC_PRESET_ROW ;
 int VGA_CRTC_UNDERLINE ;
 int svga_wcrt_mask (int,int,int) ;
 int vga_wcrt (int *,int ,int) ;

void svga_set_default_crt_regs(void)
{

 svga_wcrt_mask(0x03, 0x80, 0x80);
 vga_wcrt(((void*)0), VGA_CRTC_PRESET_ROW, 0);
 svga_wcrt_mask(VGA_CRTC_MAX_SCAN, 0, 0x1F);
 vga_wcrt(((void*)0), VGA_CRTC_UNDERLINE, 0);
 vga_wcrt(((void*)0), VGA_CRTC_MODE, 0xE3);
}
