
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_NData; int SiS_DDC_Data; int SiS_DDC_NClk; int SiS_DDC_Clk; int SiS_DDC_Index; scalar_t__ SiS_SensibleSR11; } ;



__attribute__((used)) static void
SiS_SetupDDCN(struct SiS_Private *SiS_Pr)
{
  SiS_Pr->SiS_DDC_NData = ~SiS_Pr->SiS_DDC_Data;
  SiS_Pr->SiS_DDC_NClk = ~SiS_Pr->SiS_DDC_Clk;
  if((SiS_Pr->SiS_DDC_Index == 0x11) && (SiS_Pr->SiS_SensibleSR11)) {
     SiS_Pr->SiS_DDC_NData &= 0x0f;
     SiS_Pr->SiS_DDC_NClk &= 0x0f;
  }
}
