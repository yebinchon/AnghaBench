
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBType; int SiS_VBInfo; int SiS_TVMode; int SiS_Part2Port; } ;


 int SetCRT2ToTVNoHiVision ;
 int SetCRT2ToYPbPr525750 ;
 int SiS_SetReg (int ,int,unsigned char const) ;
 int TVSetNTSC1024 ;
 int TVSetPAL ;
 int TVSetPALM ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_SetTVSpecial(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
  if(!(SiS_Pr->SiS_VBType & VB_SIS30xBLV)) return;
  if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToTVNoHiVision)) return;
  if(SiS_Pr->SiS_TVMode & (TVSetYPbPr525p | TVSetYPbPr750p)) return;

  if(!(SiS_Pr->SiS_TVMode & TVSetPAL)) {
     if(SiS_Pr->SiS_TVMode & TVSetNTSC1024) {
        const unsigned char specialtv[] = {
  0xa7,0x07,0xf2,0x6e,0x17,0x8b,0x73,0x53,
  0x13,0x40,0x34,0xf4,0x63,0xbb,0xcc,0x7a,
  0x58,0xe4,0x73,0xda,0x13
 };
 int i, j;
 for(i = 0x1c, j = 0; i <= 0x30; i++, j++) {
    SiS_SetReg(SiS_Pr->SiS_Part2Port,i,specialtv[j]);
 }
 SiS_SetReg(SiS_Pr->SiS_Part2Port,0x43,0x72);
 if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750)) {
    if(SiS_Pr->SiS_TVMode & TVSetPALM) {
       SiS_SetReg(SiS_Pr->SiS_Part2Port,0x01,0x14);
       SiS_SetReg(SiS_Pr->SiS_Part2Port,0x02,0x1b);
    } else {
       SiS_SetReg(SiS_Pr->SiS_Part2Port,0x01,0x14);
       SiS_SetReg(SiS_Pr->SiS_Part2Port,0x02,0x1a);
    }
 }
     }
  } else {
     if((ModeNo == 0x38) || (ModeNo == 0x4a) || (ModeNo == 0x64) ||
        (ModeNo == 0x52) || (ModeNo == 0x58) || (ModeNo == 0x5c)) {
        SiS_SetReg(SiS_Pr->SiS_Part2Port,0x01,0x1b);
        SiS_SetReg(SiS_Pr->SiS_Part2Port,0x02,0x54);
     } else {
        SiS_SetReg(SiS_Pr->SiS_Part2Port,0x01,0x1a);
        SiS_SetReg(SiS_Pr->SiS_Part2Port,0x02,0x53);
     }
  }
}
