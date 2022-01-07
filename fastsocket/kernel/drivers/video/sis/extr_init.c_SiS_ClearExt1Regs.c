
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_P3c4; } ;


 scalar_t__ SIS_315H ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;

__attribute__((used)) static void
SiS_ClearExt1Regs(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
   unsigned short i;

   for(i = 0x0A; i <= 0x0E; i++) {
      SiS_SetReg(SiS_Pr->SiS_P3c4,i,0x00);
   }

   if(SiS_Pr->ChipType >= SIS_315H) {
      SiS_SetRegAND(SiS_Pr->SiS_P3c4,0x37,0xFE);
      if(ModeNo <= 0x13) {
  if(ModeNo == 0x06 || ModeNo >= 0x0e) {
     SiS_SetReg(SiS_Pr->SiS_P3c4,0x0e,0x20);
  }
      }
   }
}
