
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; } ;


 int vga_mm_wgfx (int ,int,unsigned char) ;

__attribute__((used)) static inline void write3CE(struct tridentfb_par *par, int reg,
       unsigned char val)
{
 vga_mm_wgfx(par->io_virt, reg, val);
}
