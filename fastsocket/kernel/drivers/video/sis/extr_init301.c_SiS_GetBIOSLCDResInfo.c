
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned short SiS_LCDResInfo; } ;


 unsigned short Panel661_1280x854 ;
 unsigned short Panel_1280x768 ;

 unsigned short Panel_1280x800 ;



__attribute__((used)) static unsigned short
SiS_GetBIOSLCDResInfo(struct SiS_Private *SiS_Pr)
{
   unsigned short temp = SiS_Pr->SiS_LCDResInfo;

   switch(temp) {
   case 130: temp = Panel_1280x768; break;
   case 129: temp = Panel_1280x800; break;
   case 128: temp = Panel661_1280x854; break;
   }
   return temp;
}
