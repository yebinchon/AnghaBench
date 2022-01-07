
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {unsigned char* VirtualRomBase; int SiS_VBInfo; unsigned short CModeFlag; scalar_t__ ChipType; int SiS_IF_DEF_LVDS; int SiS_VGAHT; int SiS_VGAHDE; int SiS_VBType; unsigned short SiS_HT; unsigned short SiS_HDE; int SiS_LCDInfo; scalar_t__ SiS_LCDResInfo; unsigned short CHSyncStart; unsigned short CHSyncEnd; unsigned char* CCRT1CRTC; int SiS_TVMode; int SiS_VGAVT; scalar_t__ SiS_IF_DEF_CH70xx; int SiS_VGAVDE; unsigned short CVSyncStart; unsigned short CVSyncEnd; int PDC; int SiS_Part1Port; int SiS_ROMNew; scalar_t__ SiS_UseROM; scalar_t__ SiS_IF_DEF_FSTN; scalar_t__ SiS_IF_DEF_DSTN; TYPE_3__* SiS_CRT1Table; scalar_t__ UseCustomMode; TYPE_2__* SiS_EModeIDTable; int SiS_UseWideCRT2; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_6__ {unsigned char* CR; } ;
struct TYPE_5__ {unsigned short Ext_RESINFO; unsigned short Ext_ModeFlag; } ;
struct TYPE_4__ {unsigned short St_ModeFlag; } ;


 int DontExpandLCD ;
 unsigned short DoubleScanMode ;
 unsigned short HalfDCLK ;
 scalar_t__ Panel_1024x768 ;
 scalar_t__ Panel_1280x1024 ;
 scalar_t__ Panel_1280x960 ;
 scalar_t__ Panel_1600x1200 ;
 scalar_t__ Panel_640x480 ;
 scalar_t__ Panel_Custom ;
 scalar_t__ SIS_300 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_650 ;
 scalar_t__ SIS_661 ;
 scalar_t__ SIS_740 ;
 unsigned short SIS_RI_1280x1024 ;
 unsigned short SIS_RI_1600x1200 ;
 int SetCRT2ToAVIDEO ;
 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToSVIDEO ;
 int SetCRT2ToTV ;
 int SetCRT2ToTVNoYPbPrHiVision ;
 int SetInSlaveMode ;
 unsigned short SiS_GetRefCRT1CRTC (struct SiS_Private*,unsigned short,int ) ;
 int SiS_SetCRT2FIFO_300 (struct SiS_Private*,unsigned short) ;
 int SiS_SetCRT2FIFO_310 (struct SiS_Private*) ;
 int SiS_SetCRT2Offset (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup1_301 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetGroup1_LVDS (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,unsigned short) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 int TVSet525p1024 ;
 int TVSetNTSC1024 ;
 int VB_NoLCD ;
 int VB_SIS301 ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_SetGroup1(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RefreshRateTableIndex)
{



  unsigned short temp=0, tempax=0, tempbx=0, tempcx=0, bridgeadd=0;
  unsigned short pushbx=0, CRT1Index=0, modeflag, resinfo=0;




  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
     SiS_SetGroup1_LVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     return;
  }

  if(ModeNo <= 0x13) {
     modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
  } else if(SiS_Pr->UseCustomMode) {
     modeflag = SiS_Pr->CModeFlag;
  } else {
     CRT1Index = SiS_GetRefCRT1CRTC(SiS_Pr, RefreshRateTableIndex, SiS_Pr->SiS_UseWideCRT2);
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;
     modeflag = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
  }

  SiS_SetCRT2Offset(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);

  if( ! ((SiS_Pr->ChipType >= SIS_315H) &&
         (SiS_Pr->SiS_IF_DEF_LVDS == 1) &&
         (SiS_Pr->SiS_VBInfo & SetInSlaveMode)) ) {

     if(SiS_Pr->ChipType < SIS_315H ) {



     } else {



     }



     if(SiS_Pr->ChipType < SIS_315H ) {
     } else {
     }

     if(SiS_Pr->SiS_VBType & VB_SISVB) {

 if(SiS_Pr->UseCustomMode) {
    tempbx = SiS_Pr->CHSyncStart + bridgeadd;
    tempcx = SiS_Pr->CHSyncEnd + bridgeadd;
    tempax = SiS_Pr->SiS_VGAHT;
    if(modeflag & HalfDCLK) tempax >>= 1;
    tempax--;
    if(tempcx > tempax) tempcx = tempax;
 }

 if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) {
    unsigned char cr4, cr14, cr5, cr15;
    if(SiS_Pr->UseCustomMode) {
       cr4 = SiS_Pr->CCRT1CRTC[4];
       cr14 = SiS_Pr->CCRT1CRTC[14];
       cr5 = SiS_Pr->CCRT1CRTC[5];
       cr15 = SiS_Pr->CCRT1CRTC[15];
    } else {
       cr4 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[4];
       cr14 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[14];
       cr5 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[5];
       cr15 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[15];
    }
    tempbx = ((cr4 | ((cr14 & 0xC0) << 2)) - 3) << 3;
    tempcx = (((cr5 & 0x1f) | ((cr15 & 0x04) << (5-2))) - 3) << 3;
    tempcx &= 0x00FF;
    tempcx |= (tempbx & 0xFF00);
    tempbx += bridgeadd;
    tempcx += bridgeadd;
    tempax = SiS_Pr->SiS_VGAHT;
    if(modeflag & HalfDCLK) tempax >>= 1;
    tempax--;
    if(tempcx > tempax) tempcx = tempax;
 }

 if(SiS_Pr->SiS_TVMode & (TVSetNTSC1024 | TVSet525p1024)) {
    tempbx = 1040;
    tempcx = 1044;
 }

     }

     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0B,tempbx);

     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0D,tempcx);

     temp = ((tempbx >> 8) & 0x0F) | ((pushbx >> 4) & 0xF0);
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0C,temp);



     tempcx = SiS_Pr->SiS_VGAVT - 1;
     temp = tempcx & 0x00FF;

     if(SiS_Pr->ChipType < SIS_661) {
        if(SiS_Pr->SiS_IF_DEF_LVDS == 1) {
    if(SiS_Pr->ChipType < SIS_315H) {
       if(SiS_Pr->SiS_IF_DEF_CH70xx != 0) {
          if(SiS_Pr->SiS_VBInfo & (SetCRT2ToSVIDEO | SetCRT2ToAVIDEO)) {
             temp--;
          }
       }
    } else {
       temp--;
    }
 } else if(SiS_Pr->ChipType >= SIS_315H) {
    temp--;
 }
     }
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0E,temp);

     tempbx = SiS_Pr->SiS_VGAVDE - 1;
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0F,tempbx);

     temp = ((tempbx >> 5) & 0x38) | ((tempcx >> 8) & 0x07);
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x12,temp);

     if((SiS_Pr->ChipType >= SIS_315H) && (SiS_Pr->ChipType < SIS_661)) {
 tempbx++;
 tempax = tempbx;
 tempcx++;
 tempcx -= tempax;
 tempcx >>= 2;
 tempbx += tempcx;
 if(tempcx < 4) tempcx = 4;
 tempcx >>= 2;
 tempcx += tempbx;
 tempcx++;
     } else {
 tempbx = (SiS_Pr->SiS_VGAVT + SiS_Pr->SiS_VGAVDE) >> 1;
 tempcx = ((SiS_Pr->SiS_VGAVT - SiS_Pr->SiS_VGAVDE) >> 4) + tempbx + 1;
     }

     if(SiS_Pr->SiS_VBType & VB_SISVB) {
 if(SiS_Pr->UseCustomMode) {
    tempbx = SiS_Pr->CVSyncStart;
    tempcx = SiS_Pr->CVSyncEnd;
 }
 if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) {
    unsigned char cr8, cr7, cr13;
    if(SiS_Pr->UseCustomMode) {
       cr8 = SiS_Pr->CCRT1CRTC[8];
       cr7 = SiS_Pr->CCRT1CRTC[7];
       cr13 = SiS_Pr->CCRT1CRTC[13];
       tempcx = SiS_Pr->CCRT1CRTC[9];
    } else {
       cr8 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[8];
       cr7 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[7];
       cr13 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[13];
       tempcx = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[9];
    }
    tempbx = cr8;
    if(cr7 & 0x04) tempbx |= 0x0100;
    if(cr7 & 0x80) tempbx |= 0x0200;
    if(cr13 & 0x08) tempbx |= 0x0400;
 }
     }
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x10,tempbx);

     temp = ((tempbx >> 4) & 0x70) | (tempcx & 0x0F);
     SiS_SetReg(SiS_Pr->SiS_Part1Port,0x11,temp);



     if(SiS_Pr->ChipType < SIS_315H) {
     } else {
     }

  }

  if(SiS_Pr->SiS_VBType & VB_SISVB) {
     if((SiS_Pr->SiS_VBType & VB_NoLCD) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) {

 SiS_SetGroup1_LVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     } else if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
 SiS_SetGroup1_301(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     }
  } else {
     if(SiS_Pr->ChipType < SIS_315H) {
 SiS_SetGroup1_LVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     } else {
 if(SiS_Pr->SiS_IF_DEF_CH70xx != 0) {
    if((!(SiS_Pr->SiS_VBInfo & SetCRT2ToTV)) || (SiS_Pr->SiS_VBInfo & SetInSlaveMode)) {
       SiS_SetGroup1_LVDS(SiS_Pr, ModeNo,ModeIdIndex,RefreshRateTableIndex);
    }
 } else {
    SiS_SetGroup1_LVDS(SiS_Pr, ModeNo,ModeIdIndex,RefreshRateTableIndex);
 }
     }
  }
}
