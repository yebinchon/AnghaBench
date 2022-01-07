
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_D ;
 int VGA_GFX_SR_ENABLE ;
 int vga_io_rgfx (int ) ;
 int vga_io_w (int ,int) ;

__attribute__((used)) static inline int setsr(int sr)
{
 int oldsr;

 oldsr = vga_io_rgfx(VGA_GFX_SR_ENABLE);
 vga_io_w(VGA_GFX_D, sr);
 return oldsr;
}
