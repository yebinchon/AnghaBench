
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {scalar_t__ io_virt; } ;


 scalar_t__ VGA_IS1_RC ;
 int fb_readb (scalar_t__) ;
 int vga_mm_wattr (scalar_t__,int,unsigned char) ;

__attribute__((used)) static inline void writeAttr(struct tridentfb_par *par, int reg,
        unsigned char val)
{
 fb_readb(par->io_virt + VGA_IS1_RC);
 vga_mm_wattr(par->io_virt, reg, val);
}
