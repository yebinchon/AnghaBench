
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pcibase; } ;
typedef TYPE_1__ sb_devc ;


 int inb (scalar_t__) ;
 int sb_intr (TYPE_1__*) ;

__attribute__((used)) static void pci_intr(sb_devc *devc)
{
 int src = inb(devc->pcibase+0x1A);
 src&=3;
 if(src)
  sb_intr(devc);
}
