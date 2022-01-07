
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBType; scalar_t__ ChipType; scalar_t__ SiS_CustomT; int SiS_IF_DEF_CH70xx; int SiS_Part1Port; int SiS_P3c4; int SiS_Part2Port; int SiS_Part4Port; int SiS_P3c6; int SiS_P3d4; } ;


 scalar_t__ CUT_CLEVO1400 ;
 scalar_t__ CUT_COMPAQ1280 ;
 scalar_t__ IS_SIS740 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_550 ;
 scalar_t__ SIS_730 ;
 scalar_t__ SIS_740 ;
 int SiS_CR36BIOSWord23b (struct SiS_Private*) ;
 int SiS_CR36BIOSWord23d (struct SiS_Private*) ;
 scalar_t__ SiS_CRT2IsLCD (struct SiS_Private*) ;
 int SiS_Chrontel701xBLOff (struct SiS_Private*) ;
 int SiS_Chrontel701xOff (struct SiS_Private*) ;
 int SiS_DDC2Delay (struct SiS_Private*,int) ;
 int SiS_DisplayOff (struct SiS_Private*) ;
 unsigned short SiS_GetCH701x (struct SiS_Private*,int) ;
 int SiS_GetReg (int ,int) ;
 int SiS_HandlePWD (struct SiS_Private*) ;
 scalar_t__ SiS_Is301B (struct SiS_Private*) ;
 scalar_t__ SiS_IsDualEdge (struct SiS_Private*) ;
 scalar_t__ SiS_IsLCDOrLCDA (struct SiS_Private*) ;
 scalar_t__ SiS_IsNotM650orLater (struct SiS_Private*) ;
 scalar_t__ SiS_IsTVOrYPbPrOrScart (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAMode (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAorLCD (struct SiS_Private*) ;
 int SiS_PanelDelay (struct SiS_Private*,int) ;
 int SiS_PanelDelayLoop (struct SiS_Private*,int,int) ;
 int SiS_SetCH700x (struct SiS_Private*,int,int) ;
 int SiS_SetCH701x (struct SiS_Private*,int,int) ;
 int SiS_SetReg (int ,int,unsigned short) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegByte (int ,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_SetRegSR11ANDOR (struct SiS_Private*,int,int) ;
 int SiS_ShortDelay (struct SiS_Private*,int) ;
 int SiS_UnLockCRT2 (struct SiS_Private*) ;
 int SiS_WaitVBRetrace (struct SiS_Private*) ;
 int SiS_WeHaveBacklightCtrl (struct SiS_Private*) ;
 int VB_SIS30xBLV ;
 int VB_SISEMI ;
 int VB_SISLVDS ;
 int VB_SISVB ;

void
SiS_DisableBridge(struct SiS_Private *SiS_Pr)
{



  unsigned short temp=0;

  if(SiS_Pr->SiS_VBType & VB_SISVB) {

     if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {

 if(SiS_Pr->ChipType < SIS_315H) {
        } else {
 }

     } else {

        if(SiS_Pr->ChipType < SIS_315H) {






 }

 SiS_SetRegAND(SiS_Pr->SiS_Part2Port,0x00,0xDF);
 SiS_DisplayOff(SiS_Pr);

 if(SiS_Pr->ChipType >= SIS_315H) {
    SiS_SetRegOR(SiS_Pr->SiS_Part1Port,0x00,0x80);
 }

 SiS_SetRegAND(SiS_Pr->SiS_P3c4,0x32,0xDF);

 if(SiS_Pr->ChipType >= SIS_315H) {
     temp = SiS_GetReg(SiS_Pr->SiS_Part1Port,0x00);
     SiS_SetRegOR(SiS_Pr->SiS_Part1Port,0x00,0x10);
     SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x1E,0x20);
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x00,temp);
 } else {
 }

      }

  } else {

    if(SiS_Pr->ChipType < SIS_315H) {
    } else {
    }

  }

}
