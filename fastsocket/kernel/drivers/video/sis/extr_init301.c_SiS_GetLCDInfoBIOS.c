
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned short PanelHT; unsigned short PanelVT; size_t PanelVCLKIdx315; int SiS_NeedRomModeData; TYPE_2__* SiS_VBVCLKData; void* PanelVRE; void* PanelVRS; void* PanelHRE; void* PanelHRS; TYPE_1__* SiS_VCLKData; } ;
struct TYPE_4__ {unsigned short CLOCK; unsigned char Part4_A; unsigned char Part4_B; } ;
struct TYPE_3__ {unsigned short CLOCK; unsigned char SR2B; unsigned char SR2C; } ;


 unsigned char* GetLCDStructPtr661 (struct SiS_Private*) ;
 void* SISGETROMW (int) ;
 size_t VCLK_CUSTOM_315 ;
 int X_INFO ;
 int xf86DrvMsg (int ,int ,char*,unsigned short,unsigned short,void*,void*,void*,void*,unsigned short,unsigned char,unsigned char) ;

__attribute__((used)) static void
SiS_GetLCDInfoBIOS(struct SiS_Private *SiS_Pr)
{
}
