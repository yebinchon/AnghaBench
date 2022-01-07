
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_DeviceAddr; int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; unsigned short SiS_DDC_ReadAddr; int SiS_ChrontelInit; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int ) ;
 unsigned short SiS_GetChReg (struct SiS_Private*,int) ;
 int SiS_I2CDELAYSHORT ;
 int SiS_SetupDDCN (struct SiS_Private*) ;

unsigned short
SiS_GetCH700x(struct SiS_Private *SiS_Pr, unsigned short tempbx)
{
  unsigned short result;

  SiS_Pr->SiS_DDC_DeviceAddr = 0xEA;

  SiS_DDC2Delay(SiS_Pr,SiS_I2CDELAYSHORT);

  if(!(SiS_Pr->SiS_ChrontelInit)) {
     SiS_Pr->SiS_DDC_Index = 0x11;
     SiS_Pr->SiS_DDC_Data = 0x02;
     SiS_Pr->SiS_DDC_Clk = 0x01;
     SiS_SetupDDCN(SiS_Pr);
  }

  SiS_Pr->SiS_DDC_ReadAddr = tempbx;

  if( ((result = SiS_GetChReg(SiS_Pr,0x80)) == 0xFFFF) &&
      (!SiS_Pr->SiS_ChrontelInit) ) {

     SiS_Pr->SiS_DDC_Index = 0x0a;
     SiS_Pr->SiS_DDC_Data = 0x80;
     SiS_Pr->SiS_DDC_Clk = 0x40;
     SiS_SetupDDCN(SiS_Pr);

     result = SiS_GetChReg(SiS_Pr,0x80);
  }
  return result;
}
