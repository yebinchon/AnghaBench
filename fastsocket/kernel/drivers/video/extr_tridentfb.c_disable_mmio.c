
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; int chip_id; } ;


 int NewMode1 ;
 int PCIReg ;
 int Protection ;
 int is_oldprotect (int ) ;
 int t_inb (struct tridentfb_par*,int) ;
 int t_outb (struct tridentfb_par*,int,int) ;
 int vga_mm_rseq (int ,int) ;
 int vga_mm_wseq (int ,int ,int) ;

__attribute__((used)) static void disable_mmio(struct tridentfb_par *par)
{

 vga_mm_rseq(par->io_virt, 0x0B);


 vga_mm_wseq(par->io_virt, NewMode1, 0x80);
 if (!is_oldprotect(par->chip_id))
  vga_mm_wseq(par->io_virt, Protection, 0x92);


 t_outb(par, PCIReg, 0x3D4);
 t_outb(par, t_inb(par, 0x3D5) & ~0x01, 0x3D5);
}
