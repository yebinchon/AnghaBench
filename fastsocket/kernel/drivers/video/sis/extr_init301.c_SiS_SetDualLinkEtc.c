
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_VBType; int SiS_LCDInfo; int SiS_Part4Port; } ;


 int LCDDualLink ;
 scalar_t__ SIS_315H ;
 scalar_t__ SiS_CRT2IsLCD (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAMode (struct SiS_Private*) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int VB_SISDUALLINK ;
 int VB_SISEMI ;

__attribute__((used)) static void
SiS_SetDualLinkEtc(struct SiS_Private *SiS_Pr)
{
  if(SiS_Pr->ChipType >= SIS_315H) {
     if(SiS_Pr->SiS_VBType & VB_SISDUALLINK) {
 if((SiS_CRT2IsLCD(SiS_Pr)) ||
    (SiS_IsVAMode(SiS_Pr))) {
    if(SiS_Pr->SiS_LCDInfo & LCDDualLink) {
       SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x27,0x2c);
    } else {
       SiS_SetRegAND(SiS_Pr->SiS_Part4Port,0x27,~0x20);
    }
 }
     }
  }
  if(SiS_Pr->SiS_VBType & VB_SISEMI) {
     SiS_SetReg(SiS_Pr->SiS_Part4Port,0x2a,0x00);



     SiS_SetReg(SiS_Pr->SiS_Part4Port,0x34,0x10);
  }
}
