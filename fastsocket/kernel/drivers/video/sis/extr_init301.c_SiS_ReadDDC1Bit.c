
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_GetReg (int ,int) ;
 int SiS_WaitRetrace1 (struct SiS_Private*) ;

unsigned short
SiS_ReadDDC1Bit(struct SiS_Private *SiS_Pr)
{
   SiS_WaitRetrace1(SiS_Pr);
   return ((SiS_GetReg(SiS_Pr->SiS_P3c4,0x11) & 0x02) >> 1);
}
