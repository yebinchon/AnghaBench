
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_I ;
 int vga_io_r (int ) ;

__attribute__((used)) static inline int getindex(void)
{
 return vga_io_r(VGA_GFX_I);
}
