
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_P3d4; int SiS_P3c4; } ;


 scalar_t__ SIS_730 ;
 int SiS_GetReg (int ,int) ;

__attribute__((used)) static bool
SiS_CRT2IsLCD(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->ChipType == SIS_730) {
      if(SiS_GetReg(SiS_Pr->SiS_P3c4,0x13) & 0x20) return 1;
   }
   if(SiS_GetReg(SiS_Pr->SiS_P3d4,0x30) & 0x20) return 1;
   return 0;
}
