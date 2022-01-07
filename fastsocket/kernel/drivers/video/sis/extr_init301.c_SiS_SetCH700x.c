
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_DeviceAddr; int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; int SiS_ChrontelInit; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int ) ;
 int SiS_I2CDELAYSHORT ;
 int SiS_SetChReg (struct SiS_Private*,unsigned short,unsigned char,int) ;
 int SiS_SetupDDCN (struct SiS_Private*) ;

void
SiS_SetCH700x(struct SiS_Private *SiS_Pr, unsigned short reg, unsigned char val)
{
  SiS_Pr->SiS_DDC_DeviceAddr = 0xEA;

  SiS_DDC2Delay(SiS_Pr,SiS_I2CDELAYSHORT);

  if(!(SiS_Pr->SiS_ChrontelInit)) {
     SiS_Pr->SiS_DDC_Index = 0x11;
     SiS_Pr->SiS_DDC_Data = 0x02;
     SiS_Pr->SiS_DDC_Clk = 0x01;
     SiS_SetupDDCN(SiS_Pr);
  }

  if( (!(SiS_SetChReg(SiS_Pr, reg, val, 0x80))) &&
      (!(SiS_Pr->SiS_ChrontelInit)) ) {
     SiS_Pr->SiS_DDC_Index = 0x0a;
     SiS_Pr->SiS_DDC_Data = 0x80;
     SiS_Pr->SiS_DDC_Clk = 0x40;
     SiS_SetupDDCN(SiS_Pr);

     SiS_SetChReg(SiS_Pr, reg, val, 0x80);
  }
}
