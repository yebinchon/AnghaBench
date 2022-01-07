
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned short CSR2B; unsigned short CSR2C; int SiS_VBType; int SiS_VBInfo; scalar_t__ ChipType; int SiS_P3c4; TYPE_2__* SiS_VCLKData; TYPE_1__* SiS_VBVCLKData; scalar_t__ Alternate1600x1200; scalar_t__ UseCustomMode; } ;
struct TYPE_4__ {unsigned short SR2B; unsigned short SR2C; } ;
struct TYPE_3__ {unsigned short Part4_A; unsigned short Part4_B; } ;


 unsigned short HalfDCLK ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToLCDA ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetReg (int ,int) ;
 unsigned short SiS_GetVCLK2Ptr (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int VB_SIS30xBLV ;
 scalar_t__ XGI_20 ;

__attribute__((used)) static void
SiS_SetCRT1VCLK(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex, unsigned short RRTI)
{
   unsigned short index = 0, clka, clkb;

   if(SiS_Pr->UseCustomMode) {
      clka = SiS_Pr->CSR2B;
      clkb = SiS_Pr->CSR2C;
   } else {
      index = SiS_GetVCLK2Ptr(SiS_Pr, ModeNo, ModeIdIndex, RRTI);
      if((SiS_Pr->SiS_VBType & VB_SIS30xBLV) &&
  (SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA)) {

  if((index == 0x21) && (SiS_Pr->Alternate1600x1200)) index = 0x72;
  clka = SiS_Pr->SiS_VBVCLKData[index].Part4_A;
  clkb = SiS_Pr->SiS_VBVCLKData[index].Part4_B;
      } else {
  clka = SiS_Pr->SiS_VCLKData[index].SR2B;
  clkb = SiS_Pr->SiS_VCLKData[index].SR2C;
      }
   }

   SiS_SetRegAND(SiS_Pr->SiS_P3c4,0x31,0xCF);

   SiS_SetReg(SiS_Pr->SiS_P3c4,0x2b,clka);
   SiS_SetReg(SiS_Pr->SiS_P3c4,0x2c,clkb);

   if(SiS_Pr->ChipType >= SIS_315H) {
   } else {
      SiS_SetReg(SiS_Pr->SiS_P3c4,0x2D,0x80);
   }
}
