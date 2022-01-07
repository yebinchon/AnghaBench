
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBType; int SiS_VBInfo; } ;


 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SiS_GetCRT2Data301 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_GetCRT2DataLVDS (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int VB_NoLCD ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_GetCRT2Data(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
                unsigned short RefreshRateTableIndex)
{

   if(SiS_Pr->SiS_VBType & VB_SISVB) {

      if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
         SiS_GetCRT2DataLVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      } else {
  if((SiS_Pr->SiS_VBType & VB_NoLCD) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) {

     SiS_GetCRT2DataLVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
  } else {
     SiS_GetCRT2Data301(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
  }
      }

   } else {

      SiS_GetCRT2DataLVDS(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);

   }
}
