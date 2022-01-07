
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned int SiS_VGAVT; unsigned int SiS_VGAVDE; unsigned int SiS_RVBHCMAX; unsigned int SiS_VT; unsigned int SiS_VDE; unsigned int SiS_RVBHCFACT; unsigned int SiS_HT; } ;



__attribute__((used)) static unsigned short
SiS_GetVGAHT2(struct SiS_Private *SiS_Pr)
{
  unsigned int tempax,tempbx;

  tempbx = (SiS_Pr->SiS_VGAVT - SiS_Pr->SiS_VGAVDE) * SiS_Pr->SiS_RVBHCMAX;
  tempax = (SiS_Pr->SiS_VT - SiS_Pr->SiS_VDE) * SiS_Pr->SiS_RVBHCFACT;
  tempax = (tempax * SiS_Pr->SiS_HT) / tempbx;
  return (unsigned short)tempax;
}
