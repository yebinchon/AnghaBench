
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_VBType; int SiS_Part1Port; } ;


 scalar_t__ SIS_315H ;
 int SiS_GetReg (int ,int) ;
 int SiS_WaitRetrace1 (struct SiS_Private*) ;
 int SiS_WaitRetrace2 (struct SiS_Private*,int) ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_WaitVBRetrace(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->ChipType < SIS_315H) {
   } else {







   }
}
