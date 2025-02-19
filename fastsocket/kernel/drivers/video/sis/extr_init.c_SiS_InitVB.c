
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char* VirtualRomBase; unsigned char Init_P4_0E; scalar_t__ ChipType; scalar_t__ SiS_XGIROM; scalar_t__ SiS_ROMNew; } ;


 scalar_t__ XGI_40 ;

__attribute__((used)) static void
SiS_InitVB(struct SiS_Private *SiS_Pr)
{
   unsigned char *ROMAddr = SiS_Pr->VirtualRomBase;

   SiS_Pr->Init_P4_0E = 0;
   if(SiS_Pr->SiS_ROMNew) {
      SiS_Pr->Init_P4_0E = ROMAddr[0x82];
   } else if(SiS_Pr->ChipType >= XGI_40) {
      if(SiS_Pr->SiS_XGIROM) {
         SiS_Pr->Init_P4_0E = ROMAddr[0x80];
      }
   }
}
