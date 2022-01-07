
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_Data; int SiS_DDC_NData; int SiS_DDC_Index; int SiS_DDC_Port; } ;


 int SiS_SetRegANDOR (int ,int ,int ,int) ;
 scalar_t__ SiS_SetSCLKHigh (struct SiS_Private*) ;
 scalar_t__ SiS_SetSCLKLow (struct SiS_Private*) ;

__attribute__((used)) static unsigned short
SiS_SetStart(struct SiS_Private *SiS_Pr)
{
  if(SiS_SetSCLKLow(SiS_Pr)) return 0xFFFF;
  SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
    SiS_Pr->SiS_DDC_Index,
    SiS_Pr->SiS_DDC_NData,
    SiS_Pr->SiS_DDC_Data);
  if(SiS_SetSCLKHigh(SiS_Pr)) return 0xFFFF;
  SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
    SiS_Pr->SiS_DDC_Index,
    SiS_Pr->SiS_DDC_NData,
    0x00);
  if(SiS_SetSCLKHigh(SiS_Pr)) return 0xFFFF;
  return 0;
}
