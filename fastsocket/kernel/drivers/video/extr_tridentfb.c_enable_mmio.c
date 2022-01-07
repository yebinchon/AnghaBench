
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int chip_id; } ;


 int NewMode1 ;
 int PCIReg ;
 int Protection ;
 int inb (int) ;
 int is_oldprotect (int ) ;
 int outb (int,int) ;
 int vga_io_rseq (int) ;
 int vga_io_wseq (int ,int) ;

__attribute__((used)) static void enable_mmio(struct tridentfb_par *par)
{

 vga_io_rseq(0x0B);


 vga_io_wseq(NewMode1, 0x80);
 if (!is_oldprotect(par->chip_id))
  vga_io_wseq(Protection, 0x92);


 outb(PCIReg, 0x3D4);
 outb(inb(0x3D5) | 0x01, 0x3D5);
}
