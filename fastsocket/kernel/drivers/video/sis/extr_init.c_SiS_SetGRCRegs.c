
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {scalar_t__ SiS_ModeType; int SiS_P3ce; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char* GRC; } ;


 scalar_t__ ModeVGA ;
 int SiS_SetReg (int ,unsigned short,unsigned char) ;
 int SiS_SetRegAND (int ,int,int) ;

__attribute__((used)) static void
SiS_SetGRCRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
   unsigned char GRdata;
   unsigned short i;

   for(i = 0; i <= 0x08; i++) {
      GRdata = SiS_Pr->SiS_StandTable[StandTableIndex].GRC[i];
      SiS_SetReg(SiS_Pr->SiS_P3ce,i,GRdata);
   }

   if(SiS_Pr->SiS_ModeType > ModeVGA) {

      SiS_SetRegAND(SiS_Pr->SiS_P3ce,0x05,0xBF);
   }
}
