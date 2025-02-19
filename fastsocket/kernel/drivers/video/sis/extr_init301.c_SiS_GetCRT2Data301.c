
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_TVData {int RVBHCMAX; int RVBHCFACT; unsigned short VGAHT; unsigned char VGAVT; unsigned short TVHDE; unsigned short TVVDE; int RVBHRS2; int HALFRVBHRS; int RVBHRS; int FlickerMode; int RY1COE; int RY2COE; int RY3COE; int RY4COE; } ;
struct SiS_Private {unsigned short CModeFlag; int SiS_VBInfo; int SiS_SetFlag; unsigned char* VirtualRomBase; int SiS_NewFlickerMode; int SiS_RVBHRS; int SiS_RY1COE; int SiS_RY2COE; int SiS_RY3COE; int SiS_RY4COE; int SiS_RVBHRS2; int SiS_RVBHCMAX; int SiS_RVBHCFACT; unsigned short SiS_HDE; unsigned short SiS_VGAHDE; unsigned short SiS_VDE; unsigned short SiS_VGAVDE; unsigned short CHTotal; unsigned short SiS_VGAHT; unsigned short SiS_HT; unsigned char SiS_VGAVT; unsigned char SiS_VT; unsigned char CVTotal; int SiS_TVMode; int SiS_LCDInfo; unsigned short PanelHT; unsigned char PanelVT; unsigned short PanelXRes; unsigned short PanelYRes; int SiS_LCDResInfo; int ChipType; struct SiS_LCDData* SiS_ExtLCD1024x768Data; struct SiS_LCDData* SiS_St2LCD1280x1024Data; struct SiS_LCDData* SiS_NoScaleData; struct SiS_LCDData* SiS_LCD1680x1050Data; struct SiS_LCDData* SiS_StLCD1600x1200Data; struct SiS_LCDData* SiS_ExtLCD1600x1200Data; struct SiS_LCDData* SiS_StLCD1400x1050Data; struct SiS_LCDData* SiS_ExtLCD1400x1050Data; struct SiS_LCDData* SiS_ExtLCD1280x1024Data; struct SiS_LCDData* SiS_LCD1280x960Data; struct SiS_LCDData* SiS_LCD1280x854Data; struct SiS_LCDData* SiS_LCD1280x800_2Data; struct SiS_LCDData* SiS_LCD1280x800Data; struct SiS_LCDData* SiS_StLCD1280x768_2Data; struct SiS_LCDData* SiS_ExtLCD1280x768_2Data; struct SiS_LCDData* SiS_LCD1280x720Data; struct SiS_LCDData* SiS_St2LCD1024x768Data; scalar_t__ UseCustomMode; struct SiS_TVData* SiS_StPALData; struct SiS_TVData* SiS_St2HiTVData; struct SiS_TVData* SiS_St1HiTVData; struct SiS_TVData* SiS_St750pData; struct SiS_TVData* SiS_St525pData; struct SiS_TVData* SiS_St525iData; struct SiS_TVData* SiS_StNTSCData; struct SiS_TVData* SiS_Ext750pData; struct SiS_TVData* SiS_Ext525pData; struct SiS_TVData* SiS_Ext525iData; struct SiS_TVData* SiS_ExtNTSCData; struct SiS_TVData* SiS_ExtPALData; struct SiS_TVData* SiS_ExtHiTVData; scalar_t__ SiS_NeedRomModeData; TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; } ;
struct SiS_LCDData {int RVBHCMAX; int RVBHCFACT; unsigned short VGAHT; unsigned char VGAVT; unsigned short LCDHT; unsigned char LCDVT; } ;
struct TYPE_4__ {unsigned short Ext_ModeFlag; unsigned short Ext_RESINFO; short ROMMODEIDX661; } ;
struct TYPE_3__ {unsigned short St_ModeFlag; unsigned short St_ResInfo; } ;


 int DontExpandLCD ;
 unsigned short ExtHiTVHT ;
 unsigned char ExtHiTVVT ;
 unsigned char* GetLCDStructPtr661 (struct SiS_Private*) ;
 unsigned short HalfDCLK ;
 int LCDPass11 ;
 int LCDVESATiming ;
 void* NTSC2HT ;
 void* NTSCHT ;
 void* NTSCVT ;
 int PALHT ;
 int PALVT ;
 unsigned short SISGETROMW (int) ;
 int SIS_315H ;
 unsigned short SIS_RI_1024x768 ;
 unsigned short SIS_RI_1280x1024 ;
 unsigned short SIS_RI_1280x720 ;
 unsigned short SIS_RI_960x600 ;
 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToTV ;
 int SetCRT2ToYPbPr525750 ;
 int SetInSlaveMode ;
 struct SiS_LCDData* SiS310_ExtCompaq1280x1024Data ;
 int SiS_GetCRT2Ptr (struct SiS_Private*,unsigned short,unsigned short,unsigned short,unsigned short*,unsigned short*) ;
 int SiS_GetCRT2ResInfo (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetRAMDAC2DATA (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 unsigned short StHiTVHT ;
 unsigned char StHiTVVT ;
 int TVSet525p1024 ;
 int TVSetNTSC1024 ;
 int TVSetPAL ;
 int TVSetTVSimuMode ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 int X_INFO ;
 int xf86DrvMsg (int ,int ,char*,unsigned short,unsigned short) ;

__attribute__((used)) static void
SiS_GetCRT2Data301(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RefreshRateTableIndex)
{
  unsigned char *ROMAddr = ((void*)0);
  unsigned short tempax, tempbx, modeflag, romptr=0;
  unsigned short resinfo, CRT2Index, ResIndex;
  const struct SiS_LCDData *LCDPtr = ((void*)0);
  const struct SiS_TVData *TVPtr = ((void*)0);




  if(ModeNo <= 0x13) {
     modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
     resinfo = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ResInfo;
  } else if(SiS_Pr->UseCustomMode) {
     modeflag = SiS_Pr->CModeFlag;
     resinfo = 0;
  } else {
     modeflag = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;
  }

  SiS_Pr->SiS_NewFlickerMode = 0;
  SiS_Pr->SiS_RVBHRS = 50;
  SiS_Pr->SiS_RY1COE = 0;
  SiS_Pr->SiS_RY2COE = 0;
  SiS_Pr->SiS_RY3COE = 0;
  SiS_Pr->SiS_RY4COE = 0;
  SiS_Pr->SiS_RVBHRS2 = 0;

  SiS_GetCRT2ResInfo(SiS_Pr,ModeNo,ModeIdIndex);

  if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) {

     if(SiS_Pr->UseCustomMode) {

 SiS_Pr->SiS_RVBHCMAX = 1;
 SiS_Pr->SiS_RVBHCFACT = 1;
 SiS_Pr->SiS_HDE = SiS_Pr->SiS_VGAHDE;
 SiS_Pr->SiS_VDE = SiS_Pr->SiS_VGAVDE;

 tempax = SiS_Pr->CHTotal;
 if(modeflag & HalfDCLK) tempax <<= 1;
 SiS_Pr->SiS_VGAHT = SiS_Pr->SiS_HT = tempax;
 SiS_Pr->SiS_VGAVT = SiS_Pr->SiS_VT = SiS_Pr->CVTotal;

     } else {

 SiS_GetRAMDAC2DATA(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);

     }

  } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {

     SiS_GetCRT2Ptr(SiS_Pr,ModeNo,ModeIdIndex,RefreshRateTableIndex,
      &CRT2Index,&ResIndex);

     switch(CRT2Index) {
 case 2: TVPtr = SiS_Pr->SiS_ExtHiTVData; break;
 case 3: TVPtr = SiS_Pr->SiS_ExtPALData; break;
 case 4: TVPtr = SiS_Pr->SiS_ExtNTSCData; break;
 case 5: TVPtr = SiS_Pr->SiS_Ext525iData; break;
 case 6: TVPtr = SiS_Pr->SiS_Ext525pData; break;
 case 7: TVPtr = SiS_Pr->SiS_Ext750pData; break;
 case 8: TVPtr = SiS_Pr->SiS_StPALData; break;
 case 9: TVPtr = SiS_Pr->SiS_StNTSCData; break;
 case 10: TVPtr = SiS_Pr->SiS_St525iData; break;
 case 11: TVPtr = SiS_Pr->SiS_St525pData; break;
 case 12: TVPtr = SiS_Pr->SiS_St750pData; break;
 case 13: TVPtr = SiS_Pr->SiS_St1HiTVData; break;
 case 14: TVPtr = SiS_Pr->SiS_St2HiTVData; break;
 default: TVPtr = SiS_Pr->SiS_StPALData; break;
     }

     SiS_Pr->SiS_RVBHCMAX = (TVPtr+ResIndex)->RVBHCMAX;
     SiS_Pr->SiS_RVBHCFACT = (TVPtr+ResIndex)->RVBHCFACT;
     SiS_Pr->SiS_VGAHT = (TVPtr+ResIndex)->VGAHT;
     SiS_Pr->SiS_VGAVT = (TVPtr+ResIndex)->VGAVT;
     SiS_Pr->SiS_HDE = (TVPtr+ResIndex)->TVHDE;
     SiS_Pr->SiS_VDE = (TVPtr+ResIndex)->TVVDE;
     SiS_Pr->SiS_RVBHRS2 = (TVPtr+ResIndex)->RVBHRS2 & 0x0fff;
     if(modeflag & HalfDCLK) {
 SiS_Pr->SiS_RVBHRS = (TVPtr+ResIndex)->HALFRVBHRS;
 if(SiS_Pr->SiS_RVBHRS2) {
    SiS_Pr->SiS_RVBHRS2 = ((SiS_Pr->SiS_RVBHRS2 + 3) >> 1) - 3;
    tempax = ((TVPtr+ResIndex)->RVBHRS2 >> 12) & 0x07;
    if((TVPtr+ResIndex)->RVBHRS2 & 0x8000) SiS_Pr->SiS_RVBHRS2 -= tempax;
    else SiS_Pr->SiS_RVBHRS2 += tempax;
 }
     } else {
 SiS_Pr->SiS_RVBHRS = (TVPtr+ResIndex)->RVBHRS;
     }
     SiS_Pr->SiS_NewFlickerMode = ((TVPtr+ResIndex)->FlickerMode) << 7;

     if(SiS_Pr->SiS_VBInfo & SetCRT2ToHiVision) {

 if((resinfo == SIS_RI_960x600) ||
    (resinfo == SIS_RI_1024x768) ||
    (resinfo == SIS_RI_1280x1024) ||
    (resinfo == SIS_RI_1280x720)) {
    SiS_Pr->SiS_NewFlickerMode = 0x40;
 }

 if(SiS_Pr->SiS_VGAVDE == 350) SiS_Pr->SiS_TVMode |= TVSetTVSimuMode;

 SiS_Pr->SiS_HT = ExtHiTVHT;
 SiS_Pr->SiS_VT = ExtHiTVVT;
 if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
    if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) {
       SiS_Pr->SiS_HT = StHiTVHT;
       SiS_Pr->SiS_VT = StHiTVVT;
    }
 }

     } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {

 if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) {
    SiS_Pr->SiS_HT = 1650;
    SiS_Pr->SiS_VT = 750;
 } else if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) {
    SiS_Pr->SiS_HT = NTSCHT;
    if(SiS_Pr->SiS_TVMode & TVSet525p1024) SiS_Pr->SiS_HT = NTSC2HT;
    SiS_Pr->SiS_VT = NTSCVT;
 } else {
    SiS_Pr->SiS_HT = NTSCHT;
    if(SiS_Pr->SiS_TVMode & TVSetNTSC1024) SiS_Pr->SiS_HT = NTSC2HT;
    SiS_Pr->SiS_VT = NTSCVT;
 }

     } else {

 SiS_Pr->SiS_RY1COE = (TVPtr+ResIndex)->RY1COE;
 SiS_Pr->SiS_RY2COE = (TVPtr+ResIndex)->RY2COE;
 SiS_Pr->SiS_RY3COE = (TVPtr+ResIndex)->RY3COE;
 SiS_Pr->SiS_RY4COE = (TVPtr+ResIndex)->RY4COE;

 if(modeflag & HalfDCLK) {
    SiS_Pr->SiS_RY1COE = 0x00;
    SiS_Pr->SiS_RY2COE = 0xf4;
    SiS_Pr->SiS_RY3COE = 0x10;
    SiS_Pr->SiS_RY4COE = 0x38;
 }

 if(!(SiS_Pr->SiS_TVMode & TVSetPAL)) {
    SiS_Pr->SiS_HT = NTSCHT;
    if(SiS_Pr->SiS_TVMode & TVSetNTSC1024) SiS_Pr->SiS_HT = NTSC2HT;
    SiS_Pr->SiS_VT = NTSCVT;
 } else {
    SiS_Pr->SiS_HT = PALHT;
    SiS_Pr->SiS_VT = PALVT;
 }

     }

  } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {

     SiS_Pr->SiS_RVBHCMAX = 1;
     SiS_Pr->SiS_RVBHCFACT = 1;

     if(SiS_Pr->UseCustomMode) {

 SiS_Pr->SiS_HDE = SiS_Pr->SiS_VGAHDE;
 SiS_Pr->SiS_VDE = SiS_Pr->SiS_VGAVDE;

 tempax = SiS_Pr->CHTotal;
 if(modeflag & HalfDCLK) tempax <<= 1;
 SiS_Pr->SiS_VGAHT = SiS_Pr->SiS_HT = tempax;
 SiS_Pr->SiS_VGAVT = SiS_Pr->SiS_VT = SiS_Pr->CVTotal;

     } else {

 bool gotit = 0;

 if((SiS_Pr->SiS_LCDInfo & DontExpandLCD) && (!(SiS_Pr->SiS_LCDInfo & LCDPass11))) {

    SiS_Pr->SiS_VGAHT = SiS_Pr->PanelHT;
    SiS_Pr->SiS_VGAVT = SiS_Pr->PanelVT;
    SiS_Pr->SiS_HT = SiS_Pr->PanelHT;
    SiS_Pr->SiS_VT = SiS_Pr->PanelVT;
    gotit = 1;

 } else if( (!(SiS_Pr->SiS_LCDInfo & DontExpandLCD)) && (romptr) && (ROMAddr) ) {
 }

 if(!gotit) {

    SiS_GetCRT2Ptr(SiS_Pr,ModeNo,ModeIdIndex,RefreshRateTableIndex,
     &CRT2Index,&ResIndex);

    switch(CRT2Index) {
       case 138 : LCDPtr = SiS_Pr->SiS_ExtLCD1024x768Data; break;
       case 138 + 32: LCDPtr = SiS_Pr->SiS_St2LCD1024x768Data; break;
       case 136 :
       case 136 + 32: LCDPtr = SiS_Pr->SiS_LCD1280x720Data; break;
       case 135 : LCDPtr = SiS_Pr->SiS_ExtLCD1280x768_2Data; break;
       case 135 + 32: LCDPtr = SiS_Pr->SiS_StLCD1280x768_2Data; break;
       case 134 :
       case 134 + 32: LCDPtr = SiS_Pr->SiS_LCD1280x800Data; break;
       case 133 :
       case 133 + 32: LCDPtr = SiS_Pr->SiS_LCD1280x800_2Data; break;
       case 132 :
       case 132 + 32: LCDPtr = SiS_Pr->SiS_LCD1280x854Data; break;
       case 131 :
       case 131 + 32: LCDPtr = SiS_Pr->SiS_LCD1280x960Data; break;
       case 137 : LCDPtr = SiS_Pr->SiS_ExtLCD1280x1024Data; break;
       case 137 + 32: LCDPtr = SiS_Pr->SiS_St2LCD1280x1024Data; break;
       case 130 : LCDPtr = SiS_Pr->SiS_ExtLCD1400x1050Data; break;
       case 130 + 32: LCDPtr = SiS_Pr->SiS_StLCD1400x1050Data; break;
       case 129 : LCDPtr = SiS_Pr->SiS_ExtLCD1600x1200Data; break;
       case 129 + 32: LCDPtr = SiS_Pr->SiS_StLCD1600x1200Data; break;
       case 128 :
       case 128 + 32: LCDPtr = SiS_Pr->SiS_LCD1680x1050Data; break;
       case 100 : LCDPtr = SiS_Pr->SiS_NoScaleData; break;




       default : LCDPtr = SiS_Pr->SiS_ExtLCD1024x768Data; break;
    }







    SiS_Pr->SiS_RVBHCMAX = (LCDPtr+ResIndex)->RVBHCMAX;
    SiS_Pr->SiS_RVBHCFACT = (LCDPtr+ResIndex)->RVBHCFACT;
    SiS_Pr->SiS_VGAHT = (LCDPtr+ResIndex)->VGAHT;
    SiS_Pr->SiS_VGAVT = (LCDPtr+ResIndex)->VGAVT;
    SiS_Pr->SiS_HT = (LCDPtr+ResIndex)->LCDHT;
    SiS_Pr->SiS_VT = (LCDPtr+ResIndex)->LCDVT;

        }

 tempax = SiS_Pr->PanelXRes;
 tempbx = SiS_Pr->PanelYRes;

 switch(SiS_Pr->SiS_LCDResInfo) {
 case 138:
    if(SiS_Pr->SiS_SetFlag & LCDVESATiming) {
       if(SiS_Pr->ChipType < SIS_315H) {
   if (SiS_Pr->SiS_VGAVDE == 350) tempbx = 560;
   else if(SiS_Pr->SiS_VGAVDE == 400) tempbx = 640;
       }
    } else {
       if (SiS_Pr->SiS_VGAVDE == 357) tempbx = 527;
       else if(SiS_Pr->SiS_VGAVDE == 420) tempbx = 620;
       else if(SiS_Pr->SiS_VGAVDE == 525) tempbx = 775;
       else if(SiS_Pr->SiS_VGAVDE == 600) tempbx = 775;
       else if(SiS_Pr->SiS_VGAVDE == 350) tempbx = 560;
       else if(SiS_Pr->SiS_VGAVDE == 400) tempbx = 640;
    }
    break;
 case 131:
    if (SiS_Pr->SiS_VGAVDE == 350) tempbx = 700;
    else if(SiS_Pr->SiS_VGAVDE == 400) tempbx = 800;
    else if(SiS_Pr->SiS_VGAVDE == 1024) tempbx = 960;
    break;
 case 137:
    if (SiS_Pr->SiS_VGAVDE == 360) tempbx = 768;
    else if(SiS_Pr->SiS_VGAVDE == 375) tempbx = 800;
    else if(SiS_Pr->SiS_VGAVDE == 405) tempbx = 864;
    break;
 case 129:
    if(!(SiS_Pr->SiS_SetFlag & LCDVESATiming)) {
       if (SiS_Pr->SiS_VGAVDE == 350) tempbx = 875;
       else if(SiS_Pr->SiS_VGAVDE == 400) tempbx = 1000;
    }
    break;
 }

 if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {
    tempax = SiS_Pr->SiS_VGAHDE;
    tempbx = SiS_Pr->SiS_VGAVDE;
 }

 SiS_Pr->SiS_HDE = tempax;
 SiS_Pr->SiS_VDE = tempbx;
     }
  }
}
