
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; } ;


 unsigned char vga_mm_rgfx (int ,unsigned char) ;

__attribute__((used)) static inline unsigned char read3CE(struct tridentfb_par *par,
        unsigned char reg)
{
 return vga_mm_rgfx(par->io_virt, reg);
}
