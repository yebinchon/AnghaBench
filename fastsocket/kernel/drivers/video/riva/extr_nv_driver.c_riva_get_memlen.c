
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int Architecture; int PFB; int PMC; } ;
struct riva_par {unsigned int Chipset; TYPE_1__ riva; } ;
struct pci_dev {int dummy; } ;
typedef TYPE_1__ RIVA_HW_INST ;







 unsigned int NV_CHIP_0x01F0 ;
 unsigned int NV_CHIP_IGEFORCE2 ;
 int NV_RD32 (int ,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

unsigned long riva_get_memlen(struct riva_par *par)
{
 RIVA_HW_INST *chip = &par->riva;
 unsigned long memlen = 0;
 unsigned int chipset = par->Chipset;
 struct pci_dev* dev;
 u32 amt;

 switch (chip->Architecture) {
 case 132:
  if (NV_RD32(chip->PFB, 0x00000000) & 0x00000020) {
   if (((NV_RD32(chip->PMC, 0x00000000) & 0xF0) == 0x20)
       && ((NV_RD32(chip->PMC, 0x00000000)&0x0F)>=0x02)) {



    switch (NV_RD32(chip->PFB,0x00000000) & 0x03) {
    case 2:
     memlen = 1024 * 4;
     break;
    case 1:
     memlen = 1024 * 2;
     break;
    default:
     memlen = 1024 * 8;
     break;
    }
   } else {
    memlen = 1024 * 8;
   }
  } else {



   switch (NV_RD32(chip->PFB, 0x00000000) & 0x00000003) {
   case 0:
    memlen = 1024 * 8;
    break;
   case 2:
    memlen = 1024 * 4;
    break;
   default:
    memlen = 1024 * 2;
    break;
   }
  }
  break;
 case 131:
  if (NV_RD32(chip->PFB, 0x00000000) & 0x00000100) {
   memlen = ((NV_RD32(chip->PFB, 0x00000000)>>12)&0x0F) *
    1024 * 2 + 1024 * 2;
  } else {
   switch (NV_RD32(chip->PFB, 0x00000000) & 0x00000003) {
   case 0:
    memlen = 1024 * 32;
    break;
   case 1:
    memlen = 1024 * 4;
    break;
   case 2:
    memlen = 1024 * 8;
    break;
   case 3:
   default:
    memlen = 1024 * 16;
    break;
   }
  }
  break;
 case 130:
 case 129:
 case 128:
  if(chipset == NV_CHIP_IGEFORCE2) {

   dev = pci_get_bus_and_slot(0, 1);
   pci_read_config_dword(dev, 0x7C, &amt);
   pci_dev_put(dev);
   memlen = (((amt >> 6) & 31) + 1) * 1024;
  } else if (chipset == NV_CHIP_0x01F0) {
   dev = pci_get_bus_and_slot(0, 1);
   pci_read_config_dword(dev, 0x84, &amt);
   pci_dev_put(dev);
   memlen = (((amt >> 4) & 127) + 1) * 1024;
  } else {
   switch ((NV_RD32(chip->PFB, 0x0000020C) >> 20) &
    0x000000FF){
   case 0x02:
    memlen = 1024 * 2;
    break;
   case 0x04:
    memlen = 1024 * 4;
    break;
   case 0x08:
    memlen = 1024 * 8;
    break;
   case 0x10:
    memlen = 1024 * 16;
    break;
   case 0x20:
    memlen = 1024 * 32;
    break;
   case 0x40:
    memlen = 1024 * 64;
    break;
   case 0x80:
    memlen = 1024 * 128;
    break;
   default:
    memlen = 1024 * 16;
    break;
   }
  }
  break;
 }
 return memlen;
}
