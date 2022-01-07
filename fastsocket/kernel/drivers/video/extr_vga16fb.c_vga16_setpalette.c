
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void vga16_setpalette(int regno, unsigned red, unsigned green, unsigned blue)
{
 outb(regno, VGA_PEL_IW);
 outb(red >> 10, VGA_PEL_D);
 outb(green >> 10, VGA_PEL_D);
 outb(blue >> 10, VGA_PEL_D);
}
