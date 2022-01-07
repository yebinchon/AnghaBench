
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; } ;


 unsigned char vga_mm_rcrt (int ,int) ;

__attribute__((used)) static inline unsigned char read3X4(struct tridentfb_par *par, int reg)
{
 return vga_mm_rcrt(par->io_virt, reg);
}
