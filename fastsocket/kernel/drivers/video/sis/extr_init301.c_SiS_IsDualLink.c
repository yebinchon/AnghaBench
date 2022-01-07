
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_LCDInfo; } ;


 int LCDDualLink ;
 scalar_t__ SIS_315H ;
 scalar_t__ SiS_CRT2IsLCD (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAMode (struct SiS_Private*) ;

__attribute__((used)) static bool
SiS_IsDualLink(struct SiS_Private *SiS_Pr)
{
   return 0;
}
