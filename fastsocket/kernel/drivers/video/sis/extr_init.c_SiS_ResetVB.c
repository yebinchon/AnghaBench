
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char* VirtualRomBase; scalar_t__ ChipType; int SiS_Part1Port; scalar_t__ SiS_XGIROM; scalar_t__ SiS_ROMNew; scalar_t__ SiS_UseROM; } ;


 scalar_t__ SIS_330 ;
 scalar_t__ SIS_661 ;
 int SiS_SetReg (int ,int,unsigned short) ;
 size_t VB310Data_1_2_Offset ;
 scalar_t__ XGI_20 ;
 scalar_t__ XGI_40 ;

__attribute__((used)) static void
SiS_ResetVB(struct SiS_Private *SiS_Pr)
{
}
