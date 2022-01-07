
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_SysFlags; int SiS_P3d4; } ;


 int SF_760LFB ;
 int SF_760UMA ;
 scalar_t__ SIS_760 ;
 int SiS_GetReg (int ,int) ;
 int SiS_GetRegByte (unsigned int) ;
 int SiS_SetRegByte (unsigned int,unsigned char) ;
 unsigned int pciReadWord (int,int) ;
 int pciWriteByte (int,int,unsigned char) ;
 unsigned int sisfb_read_mio_pci_word (struct SiS_Private*,int) ;
 int sisfb_write_nbridge_pci_byte (struct SiS_Private*,int,unsigned char) ;

__attribute__((used)) static void
SiS_Handle760(struct SiS_Private *SiS_Pr)
{
}
