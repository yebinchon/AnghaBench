
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {int SiS_LCDHDES; int SiS_LCDVDES; int SiS_VBInfo; int SiS_LCDResInfo; int SiS_VGAVDE; int PanelYRes; int PanelVT; scalar_t__ ChipType; int SiS_LCDTypeInfo; int SiS_CustomT; int SiS_LCDInfo; int SiS_VBType; scalar_t__ SiS_VGAHDE; scalar_t__ PanelXRes; int SiS_HT; int SiS_VT; scalar_t__ SiS_IF_DEF_CH70xx; int SiS_TVMode; int SiS_SetFlag; TYPE_2__* SiS_SModeIDTable; int PanelHT; TYPE_1__* SiS_RefIndex; scalar_t__ UseCustomMode; scalar_t__ SiS_IF_DEF_TRUMPION; } ;
struct SiS_LVDSDes {int LCDHDES; int LCDVDES; } ;
struct TYPE_4__ {unsigned short St_CRT2CRTC; unsigned short St_ModeFlag; } ;
struct TYPE_3__ {unsigned short Ext_CRT2CRTC; } ;



 int CUT_COMPAQ1280 ;
 int CUT_PANEL848 ;
 int CUT_PANEL856 ;


 int DontExpandLCD ;
 unsigned short HalfDCLK ;
 int LCDPass11 ;







 int const Panel_1600x1200 ;



 int Panel_640x480 ;

 int Panel_Custom ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToTV ;
 int SetDOSMode ;
 struct SiS_LVDSDes* SiS_GetLVDSDesPtr (struct SiS_Private*) ;
 int TVSetPAL ;
 int TVSetPALM ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_GetLVDSDesData(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
                   unsigned short RefreshRateTableIndex)
{
  unsigned short modeflag, ResIndex;
  const struct SiS_LVDSDes *PanelDesPtr = ((void*)0);

  SiS_Pr->SiS_LCDHDES = 0;
  SiS_Pr->SiS_LCDVDES = 0;


  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {


     if(SiS_Pr->SiS_IF_DEF_TRUMPION) {
 if(SiS_Pr->SiS_LCDResInfo == 137) {
    if(SiS_Pr->SiS_VGAVDE == SiS_Pr->PanelYRes) {
       SiS_Pr->SiS_LCDVDES = SiS_Pr->PanelVT - 1;
    }
 }
 return;
     }


     if(SiS_Pr->ChipType < SIS_315H) {
 if(SiS_Pr->SiS_LCDResInfo == Panel_640x480 && SiS_Pr->SiS_LCDTypeInfo == 3) {
    SiS_Pr->SiS_LCDHDES = 8;
    if (SiS_Pr->SiS_VGAVDE >= 480) SiS_Pr->SiS_LCDVDES = 512;
    else if(SiS_Pr->SiS_VGAVDE >= 400) SiS_Pr->SiS_LCDVDES = 436;
    else if(SiS_Pr->SiS_VGAVDE >= 350) SiS_Pr->SiS_LCDVDES = 440;
    return;
 }
     }

  }

  if( (SiS_Pr->UseCustomMode) ||
      (SiS_Pr->SiS_LCDResInfo == Panel_Custom) ||
      (SiS_Pr->SiS_CustomT == CUT_PANEL848) ||
      (SiS_Pr->SiS_CustomT == CUT_PANEL856) ||
      (SiS_Pr->SiS_LCDInfo & LCDPass11) ) {
     return;
  }

  if(ModeNo <= 0x13) ResIndex = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC;
  else ResIndex = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC;

  if((SiS_Pr->SiS_VBType & VB_SIS30xBLV) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA)) {
  } else {

     if((SiS_Pr->SiS_IF_DEF_CH70xx != 0) && (SiS_Pr->SiS_VBInfo & SetCRT2ToTV)) {

 if((SiS_Pr->SiS_TVMode & TVSetPAL) && (!(SiS_Pr->SiS_TVMode & TVSetPALM))) {
    if(ResIndex <= 3) SiS_Pr->SiS_LCDHDES = 256;
 }

     } else if((PanelDesPtr = SiS_GetLVDSDesPtr(SiS_Pr))) {

 SiS_Pr->SiS_LCDHDES = (PanelDesPtr+ResIndex)->LCDHDES;
 SiS_Pr->SiS_LCDVDES = (PanelDesPtr+ResIndex)->LCDVDES;

     } else if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {

 if(SiS_Pr->SiS_VGAHDE != SiS_Pr->PanelXRes) {
    SiS_Pr->SiS_LCDHDES = SiS_Pr->SiS_HT - ((SiS_Pr->PanelXRes - SiS_Pr->SiS_VGAHDE) / 2);
 }
 if(SiS_Pr->SiS_VGAVDE != SiS_Pr->PanelYRes) {
    SiS_Pr->SiS_LCDVDES = SiS_Pr->SiS_VT - ((SiS_Pr->PanelYRes - SiS_Pr->SiS_VGAVDE) / 2);
 } else {
    if(SiS_Pr->ChipType < SIS_315H) {
       SiS_Pr->SiS_LCDVDES = SiS_Pr->PanelVT - 1;
    } else {
       switch(SiS_Pr->SiS_LCDResInfo) {
       case 128:
       case 137:
       case 136:
   SiS_Pr->SiS_LCDVDES = SiS_Pr->PanelVT;
   break;
       case 132:
   SiS_Pr->SiS_LCDVDES = SiS_Pr->PanelVT - 1;
   break;
       }
    }
 }

     } else {

        if(SiS_Pr->ChipType < SIS_315H) {
        } else {
 }
     }

     if((ModeNo <= 0x13) && (SiS_Pr->SiS_LCDInfo & DontExpandLCD)) {
 modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
 if((SiS_Pr->SiS_VBType & VB_SIS30xBLV) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA)) {
    if(!(modeflag & HalfDCLK)) SiS_Pr->SiS_LCDHDES = 632;
 } else if(!(SiS_Pr->SiS_SetFlag & SetDOSMode)) {
    if(SiS_Pr->SiS_LCDResInfo != 136) {
       if(SiS_Pr->SiS_LCDResInfo >= 137) {
          if(SiS_Pr->ChipType < SIS_315H) {
             if(!(modeflag & HalfDCLK)) SiS_Pr->SiS_LCDHDES = 320;
          } else {
   }
       }
    }
 }
     }
  }
}
