
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_BIT_MASK ;
 int VGA_GFX_COMPARE_MASK ;
 int VGA_GFX_COMPARE_VALUE ;
 int VGA_GFX_DATA_ROTATE ;
 int VGA_GFX_MISC ;
 int VGA_GFX_MODE ;
 int VGA_GFX_PLANE_READ ;
 int VGA_GFX_SR_ENABLE ;
 int VGA_GFX_SR_VALUE ;
 int vga_wgfx (int *,int ,int) ;

void svga_set_default_gfx_regs(void)
{

 vga_wgfx(((void*)0), VGA_GFX_SR_VALUE, 0x00);
 vga_wgfx(((void*)0), VGA_GFX_SR_ENABLE, 0x00);
 vga_wgfx(((void*)0), VGA_GFX_COMPARE_VALUE, 0x00);
 vga_wgfx(((void*)0), VGA_GFX_DATA_ROTATE, 0x00);
 vga_wgfx(((void*)0), VGA_GFX_PLANE_READ, 0x00);
 vga_wgfx(((void*)0), VGA_GFX_MODE, 0x00);


 vga_wgfx(((void*)0), VGA_GFX_MISC, 0x05);

 vga_wgfx(((void*)0), VGA_GFX_COMPARE_MASK, 0x0F);
 vga_wgfx(((void*)0), VGA_GFX_BIT_MASK, 0xFF);
}
