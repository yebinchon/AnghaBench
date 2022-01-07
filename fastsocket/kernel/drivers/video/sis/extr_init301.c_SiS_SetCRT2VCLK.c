
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {unsigned short CSR2B; unsigned short CSR2C; int SiS_VBType; int SiS_TVMode; int SiS_VBInfo; int SiS_Part4Port; TYPE_1__* SiS_VBVCLKData; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {unsigned short Part4_A; unsigned short Part4_B; } ;


 int SetCRT2ToRAMDAC ;
 unsigned short SiS_GetVCLK2Ptr (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegOR (int ,int,unsigned short) ;
 int TVSet525p1024 ;
 int TVSetNTSC1024 ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_SetCRT2VCLK(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
                 unsigned short RefreshRateTableIndex)
{
  unsigned short vclkindex, temp, reg1, reg2;

  if(SiS_Pr->UseCustomMode) {
     reg1 = SiS_Pr->CSR2B;
     reg2 = SiS_Pr->CSR2C;
  } else {
     vclkindex = SiS_GetVCLK2Ptr(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     reg1 = SiS_Pr->SiS_VBVCLKData[vclkindex].Part4_A;
     reg2 = SiS_Pr->SiS_VBVCLKData[vclkindex].Part4_B;
  }

  if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
     if(SiS_Pr->SiS_TVMode & (TVSetNTSC1024 | TVSet525p1024)) {
        SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0a,0x57);
  SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0b,0x46);
 SiS_SetReg(SiS_Pr->SiS_Part4Port,0x1f,0xf6);
     } else {
        SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0a,reg1);
        SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0b,reg2);
     }
  } else {
     SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0a,0x01);
     SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0b,reg2);
     SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0a,reg1);
  }
  SiS_SetReg(SiS_Pr->SiS_Part4Port,0x12,0x00);
  temp = 0x08;
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) temp |= 0x20;
  SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x12,temp);
}
