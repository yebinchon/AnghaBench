
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {unsigned char* CCRT1CRTC; scalar_t__ SiS_ModeType; scalar_t__ ChipType; int SiS_P3c4; int SiS_P3d4; TYPE_1__* SiS_CRT1Table; scalar_t__ Alternate1600x1200; int SiS_UseWide; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {int * CR; } ;


 unsigned short DoubleScanMode ;
 scalar_t__ ModeVGA ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;
 unsigned short SiS_GetRefCRT1CRTC (struct SiS_Private*,unsigned short,int ) ;
 int SiS_SetReg (int ,int,unsigned char) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 scalar_t__ XGI_20 ;

__attribute__((used)) static void
SiS_SetCRT1CRTC(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex, unsigned short RRTI)
{
   unsigned short temp, i, j, modeflag;
   unsigned char *crt1data = ((void*)0);

   modeflag = SiS_GetModeFlag(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->UseCustomMode) {

      crt1data = &SiS_Pr->CCRT1CRTC[0];

   } else {

      temp = SiS_GetRefCRT1CRTC(SiS_Pr, RRTI, SiS_Pr->SiS_UseWide);


      if((temp == 0x20) && (SiS_Pr->Alternate1600x1200)) temp = 0x57;

      crt1data = (unsigned char *)&SiS_Pr->SiS_CRT1Table[temp].CR[0];

   }


   SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x11,0x7f);

   for(i = 0, j = 0; i <= 7; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x10; i <= 10; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x15; i <= 12; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x0A; i <= 15; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3c4,j,crt1data[i]);
   }

   SiS_SetReg(SiS_Pr->SiS_P3c4,0x0E,crt1data[16] & 0xE0);

   temp = (crt1data[16] & 0x01) << 5;
   if(modeflag & DoubleScanMode) temp |= 0x80;
   SiS_SetRegANDOR(SiS_Pr->SiS_P3d4,0x09,0x5F,temp);

   if(SiS_Pr->SiS_ModeType > ModeVGA) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,0x14,0x4F);
   }
}
