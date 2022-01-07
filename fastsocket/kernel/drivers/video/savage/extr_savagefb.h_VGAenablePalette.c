
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {int paletteEnabled; } ;


 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,int,struct savagefb_par*) ;

__attribute__((used)) static inline void VGAenablePalette(struct savagefb_par *par)
{
 u8 tmp;

 tmp = vga_in8(0x3da, par);
 vga_out8(0x3c0, 0x00, par);
 par->paletteEnabled = 1;
}
