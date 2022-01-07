
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char* VirtualRomBase; int SiS_SetFlag; int SiS_SelectCRT2Rate; int SiS_IF_DEF_LVDS; scalar_t__ ChipType; int SiS_VBInfo; int SiS_VBType; int SiS_IF_DEF_CH70xx; int SiS_UseOEM; scalar_t__ SiS_CustomT; int SiS_Part1Port; scalar_t__ SiS_UseROM; scalar_t__ SiS_VGAVT; scalar_t__ SiS_VGAHT; scalar_t__ SiS_VT; scalar_t__ SiS_HT; scalar_t__ SiS_VGAVDE; scalar_t__ SiS_VGAHDE; scalar_t__ SiS_VDE; scalar_t__ SiS_HDE; scalar_t__ SiS_LCDVDES; scalar_t__ SiS_LCDHDES; int UseCustomMode; } ;


 scalar_t__ CUT_BARCO1024 ;
 scalar_t__ CUT_BARCO1366 ;
 int DisableCRT2Display ;
 int LowModeTests ;
 int ProgrammingCRT2 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_661 ;
 scalar_t__ SIS_730 ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToTV ;
 int SetDOSMode ;
 int SetInSlaveMode ;
 int SetOEMLCDData2 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_DisableBridge (struct SiS_Private*) ;
 int SiS_DisplayOn (struct SiS_Private*) ;
 int SiS_EnableBridge (struct SiS_Private*) ;
 int SiS_FinalizeLCD (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetCRT2Data (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_GetLVDSDesData (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 unsigned short SiS_GetRatePtr (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_LockCRT2 (struct SiS_Private*) ;
 int SiS_ModCRT1CRTC (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_OEM300Setting (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_OEM310Setting (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_OEM661Setting (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SaveCRT2Info (struct SiS_Private*,unsigned short) ;
 int SiS_SearchModeID (struct SiS_Private*,unsigned short*,unsigned short*) ;
 int SiS_SetCH701xForLCD (struct SiS_Private*) ;
 int SiS_SetCH70xxANDOR (struct SiS_Private*,int,int,int) ;
 int SiS_SetCHTVReg (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRT2ECLK (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRT2ModeRegs (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetCRT2Sync (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetGroup1 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup2 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup2_C_ELV (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup3 (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetGroup4 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup4_C_ELV (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetGroup5 (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_SetRegSR11ANDOR (struct SiS_Private*,int,int) ;
 int SiS_UnLockCRT2 (struct SiS_Private*) ;
 int VB_NoLCD ;
 int VB_SIS30xBLV ;
 int VB_SISVB ;
 int X_INFO ;
 int xf86DrvMsg (int ,int ,char*,scalar_t__,scalar_t__) ;

bool
SiS_SetCRT2Group(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{



   unsigned short ModeIdIndex, RefreshRateTableIndex;

   SiS_Pr->SiS_SetFlag |= ProgrammingCRT2;

   if(!SiS_Pr->UseCustomMode) {
      SiS_SearchModeID(SiS_Pr, &ModeNo, &ModeIdIndex);
   } else {
      ModeIdIndex = 0;
   }


   SiS_Pr->SiS_SelectCRT2Rate = 4;

   SiS_UnLockCRT2(SiS_Pr);

   RefreshRateTableIndex = SiS_GetRatePtr(SiS_Pr, ModeNo, ModeIdIndex);

   SiS_SaveCRT2Info(SiS_Pr,ModeNo);

   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      SiS_DisableBridge(SiS_Pr);
      if((SiS_Pr->SiS_IF_DEF_LVDS == 1) && (SiS_Pr->ChipType == SIS_730)) {
         SiS_SetReg(SiS_Pr->SiS_Part1Port,0x00,0x80);
      }
      SiS_SetCRT2ModeRegs(SiS_Pr, ModeNo, ModeIdIndex);
   }

   if(SiS_Pr->SiS_VBInfo & DisableCRT2Display) {
      SiS_LockCRT2(SiS_Pr);
      SiS_DisplayOn(SiS_Pr);
      return 1;
   }

   SiS_GetCRT2Data(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);


   SiS_Pr->SiS_LCDHDES = SiS_Pr->SiS_LCDVDES = 0;
   if( (SiS_Pr->SiS_IF_DEF_LVDS == 1) ||
       ((SiS_Pr->SiS_VBType & VB_NoLCD) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) ||
       ((SiS_Pr->ChipType >= SIS_315H) && (SiS_Pr->SiS_VBType & VB_SIS30xBLV)) ) {
      SiS_GetLVDSDesData(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
   }
   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      SiS_SetGroup1(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
   }

   if(SiS_Pr->SiS_VBType & VB_SISVB) {

      if(SiS_Pr->SiS_SetFlag & LowModeTests) {

  SiS_SetGroup2(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);



  SiS_SetGroup3(SiS_Pr, ModeNo, ModeIdIndex);
  SiS_SetGroup4(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);



  SiS_SetGroup5(SiS_Pr, ModeNo, ModeIdIndex);

  SiS_SetCRT2Sync(SiS_Pr, ModeNo, RefreshRateTableIndex);


  if((SiS_Pr->SiS_VBType & VB_NoLCD) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) {

     if(!((SiS_Pr->SiS_SetFlag & SetDOSMode) && ((ModeNo == 0x03) || (ModeNo == 0x10)))) {
        if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
    SiS_ModCRT1CRTC(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
        }
            }
     SiS_SetCRT2ECLK(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
  }
      }

   } else {

      SiS_SetCRT2Sync(SiS_Pr, ModeNo, RefreshRateTableIndex);

      SiS_ModCRT1CRTC(SiS_Pr,ModeNo,ModeIdIndex,RefreshRateTableIndex);

      SiS_SetCRT2ECLK(SiS_Pr,ModeNo,ModeIdIndex,RefreshRateTableIndex);

      if(SiS_Pr->SiS_SetFlag & LowModeTests) {
  if(SiS_Pr->SiS_IF_DEF_CH70xx != 0) {
     if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
        if(SiS_Pr->SiS_IF_DEF_CH70xx == 2) {



        }
     }
     if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
        SiS_SetCHTVReg(SiS_Pr,ModeNo,ModeIdIndex,RefreshRateTableIndex);
     }
  }
      }

   }
   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      SiS_EnableBridge(SiS_Pr);
   }

   SiS_DisplayOn(SiS_Pr);

   if(SiS_Pr->SiS_IF_DEF_CH70xx == 1) {
      if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {

  SiS_SetRegSR11ANDOR(SiS_Pr,0xFF,0x0C);
      } else {

  SiS_SetCH70xxANDOR(SiS_Pr,0x0e,0x01,0xf8);
      }
   }

   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      SiS_LockCRT2(SiS_Pr);
   }

   return 1;
}
