
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {TYPE_1__* SiS_RefIndex; } ;
struct TYPE_2__ {int Ext_InfoFlag; unsigned short Ext_CRTVCLK_WIDE; unsigned short Ext_CRTVCLK_NORM; unsigned short Ext_CRTVCLK; } ;


 int HaveWideTiming ;

unsigned short
SiS_GetRefCRTVCLK(struct SiS_Private *SiS_Pr, unsigned short Index, int UseWide)
{
   if(SiS_Pr->SiS_RefIndex[Index].Ext_InfoFlag & HaveWideTiming) {
      if(UseWide == 1) {
         return SiS_Pr->SiS_RefIndex[Index].Ext_CRTVCLK_WIDE;
      } else {
         return SiS_Pr->SiS_RefIndex[Index].Ext_CRTVCLK_NORM;
      }
   } else {
      return SiS_Pr->SiS_RefIndex[Index].Ext_CRTVCLK;
   }
}
