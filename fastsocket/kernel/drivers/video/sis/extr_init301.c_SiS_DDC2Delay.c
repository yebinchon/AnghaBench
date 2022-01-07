
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_GetReg (int ,int) ;

void
SiS_DDC2Delay(struct SiS_Private *SiS_Pr, unsigned int delaytime)
{
   while (delaytime-- > 0)
      SiS_GetReg(SiS_Pr->SiS_P3c4, 0x05);
}
