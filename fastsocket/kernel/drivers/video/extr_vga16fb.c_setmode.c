
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_D ;
 int VGA_GFX_MODE ;
 int vga_io_rgfx (int ) ;
 int vga_io_w (int ,int) ;

__attribute__((used)) static inline int setmode(int mode)
{
 int oldmode;

 oldmode = vga_io_rgfx(VGA_GFX_MODE);
 vga_io_w(VGA_GFX_D, mode);
 return oldmode;
}
