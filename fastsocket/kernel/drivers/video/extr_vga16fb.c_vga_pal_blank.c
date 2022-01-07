
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int outb_p (int,int ) ;

__attribute__((used)) static void vga_pal_blank(void)
{
 int i;

 for (i=0; i<16; i++) {
  outb_p(i, VGA_PEL_IW);
  outb_p(0, VGA_PEL_D);
  outb_p(0, VGA_PEL_D);
  outb_p(0, VGA_PEL_D);
 }
}
