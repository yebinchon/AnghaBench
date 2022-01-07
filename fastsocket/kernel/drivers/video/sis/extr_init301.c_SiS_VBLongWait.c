
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBInfo; } ;


 int SetCRT2ToTV ;
 int SiS_VBWait (struct SiS_Private*) ;
 int SiS_WaitRetrace1 (struct SiS_Private*) ;

__attribute__((used)) static void
SiS_VBLongWait(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
      SiS_VBWait(SiS_Pr);
   } else {
      SiS_WaitRetrace1(SiS_Pr);
   }
}
