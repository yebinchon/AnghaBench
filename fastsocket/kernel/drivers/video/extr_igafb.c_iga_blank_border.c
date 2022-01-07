
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iga_par {int dummy; } ;


 int IGA_ATTR_CTL ;
 int IGA_EXT_CNTRL ;
 scalar_t__ IGA_IDX_OVERSCAN_COLOR ;
 int IGA_IDX_VGA_OVERSCAN ;
 int iga_outb (struct iga_par*,int ,int ,scalar_t__) ;
 int pci_inb (struct iga_par*,int) ;
 int pci_outb (struct iga_par*,int,int) ;

__attribute__((used)) static void iga_blank_border(struct iga_par *par)
{
        int i;
 for (i=0; i < 3; i++)
  iga_outb(par, 0, IGA_EXT_CNTRL, IGA_IDX_OVERSCAN_COLOR + i);
}
