
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_4__ {scalar_t__ Ext_RESINFO; } ;
struct TYPE_3__ {scalar_t__ St_ResInfo; } ;



unsigned short
SiS_GetResInfo(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex)
{
   if(ModeNo <= 0x13)
      return ((unsigned short)SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ResInfo);
   else
      return ((unsigned short)SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO);
}
