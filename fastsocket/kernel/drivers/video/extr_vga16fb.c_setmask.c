
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_D ;
 int vga_io_w (int ,int) ;

__attribute__((used)) static inline void setmask(int mask)
{
 vga_io_w(VGA_GFX_D, mask);
}
