
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_SetSCLKHigh (struct SiS_Private*) ;
 int SiS_SetSCLKLow (struct SiS_Private*) ;
 int SiS_WaitRetrace1 (struct SiS_Private*) ;

__attribute__((used)) static void
SiS_SetSwitchDDC2(struct SiS_Private *SiS_Pr)
{
  SiS_SetSCLKHigh(SiS_Pr);
  SiS_WaitRetrace1(SiS_Pr);

  SiS_SetSCLKLow(SiS_Pr);
  SiS_WaitRetrace1(SiS_Pr);
}
