
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char* VirtualRomBase; scalar_t__ ChipType; } ;


 scalar_t__ IS_SIS650740 ;
 scalar_t__ SIS_661 ;
 scalar_t__ SIS_761 ;
 scalar_t__ XGI_20 ;

bool
SiSDetermineROMLayout661(struct SiS_Private *SiS_Pr)
{
   unsigned char *ROMAddr = SiS_Pr->VirtualRomBase;
   unsigned short romversoffs, romvmaj = 1, romvmin = 0;

   if(SiS_Pr->ChipType >= XGI_20) {

      return 0;
   } else if(SiS_Pr->ChipType >= SIS_761) {

      return 1;
   } else if(SiS_Pr->ChipType >= SIS_661) {
      if((ROMAddr[0x1a] == 'N') &&
  (ROMAddr[0x1b] == 'e') &&
  (ROMAddr[0x1c] == 'w') &&
  (ROMAddr[0x1d] == 'V')) {
  return 1;
      }
      romversoffs = ROMAddr[0x16] | (ROMAddr[0x17] << 8);
      if(romversoffs) {
  if((ROMAddr[romversoffs+1] == '.') || (ROMAddr[romversoffs+4] == '.')) {
     romvmaj = ROMAddr[romversoffs] - '0';
     romvmin = ((ROMAddr[romversoffs+2] -'0') * 10) + (ROMAddr[romversoffs+3] - '0');
  }
      }
      if((romvmaj != 0) || (romvmin >= 92)) {
  return 1;
      }
   } else if(IS_SIS650740) {
      if((ROMAddr[0x1a] == 'N') &&
  (ROMAddr[0x1b] == 'e') &&
  (ROMAddr[0x1c] == 'w') &&
  (ROMAddr[0x1d] == 'V')) {
  return 1;
      }
   }
   return 0;
}
