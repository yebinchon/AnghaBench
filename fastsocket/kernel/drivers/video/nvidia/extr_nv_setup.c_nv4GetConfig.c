
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int RamAmountKBytes; int CrystalFreqKHz; int MinVClockFreqKHz; int MaxVClockFreqKHz; int * PRAMIN; int * CURSOR; int PEXTDEV; int PFB; } ;


 int NV_RD32 (int ,int) ;

__attribute__((used)) static void nv4GetConfig(struct nvidia_par *par)
{
 if (NV_RD32(par->PFB, 0x0000) & 0x00000100) {
  par->RamAmountKBytes =
      ((NV_RD32(par->PFB, 0x0000) >> 12) & 0x0F) * 1024 * 2 +
      1024 * 2;
 } else {
  switch (NV_RD32(par->PFB, 0x0000) & 0x00000003) {
  case 0:
   par->RamAmountKBytes = 1024 * 32;
   break;
  case 1:
   par->RamAmountKBytes = 1024 * 4;
   break;
  case 2:
   par->RamAmountKBytes = 1024 * 8;
   break;
  case 3:
  default:
   par->RamAmountKBytes = 1024 * 16;
   break;
  }
 }
 par->CrystalFreqKHz = (NV_RD32(par->PEXTDEV, 0x0000) & 0x00000040) ?
     14318 : 13500;
 par->CURSOR = &par->PRAMIN[0x1E00];
 par->MinVClockFreqKHz = 12000;
 par->MaxVClockFreqKHz = 350000;
}
