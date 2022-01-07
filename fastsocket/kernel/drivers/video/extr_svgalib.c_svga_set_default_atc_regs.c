
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VGA_ATC_COLOR_PAGE ;
 int VGA_ATC_MODE ;
 int VGA_ATC_OVERSCAN ;
 int VGA_ATC_PEL ;
 int VGA_ATC_PLANE_ENABLE ;
 int VGA_ATT_W ;
 int svga_wattr (int,int) ;
 int vga_r (int *,int) ;
 int vga_w (int *,int ,int) ;

void svga_set_default_atc_regs(void)
{
 u8 count;

 vga_r(((void*)0), 0x3DA);
 vga_w(((void*)0), VGA_ATT_W, 0x00);


 for (count = 0; count <= 0xF; count ++)
  svga_wattr(count, count);

 svga_wattr(VGA_ATC_MODE, 0x01);

 svga_wattr(VGA_ATC_OVERSCAN, 0x00);
 svga_wattr(VGA_ATC_PLANE_ENABLE, 0x0F);
 svga_wattr(VGA_ATC_PEL, 0x00);
 svga_wattr(VGA_ATC_COLOR_PAGE, 0x00);

 vga_r(((void*)0), 0x3DA);
 vga_w(((void*)0), VGA_ATT_W, 0x20);
}
