
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BIT27 ;
 int BIT28 ;
 int BIT30 ;
 int BIT31 ;
 int COMP_INIT ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_C ;
 int RT_TRACE (int ,char*) ;
 int bMaskDWord ;
 int rtl8192_QueryBBReg (struct net_device*,int,int ) ;
 int rtl8192_setBBreg (struct net_device*,int,int ,int) ;
 int udelay (int) ;

void
PHY_IQCalibrate( struct net_device* dev)
{

 u32 i, reg;
 u32 old_value;
 long X, Y, TX0[4];
 u32 TXA[4];







 for (i = 0; i < 10; i++)
 {

  rtl8192_setBBreg(dev, 0xc04, bMaskDWord, 0x00a05430);

  udelay(5);
  rtl8192_setBBreg(dev, 0xc08, bMaskDWord, 0x000800e4);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe28, bMaskDWord, 0x80800000);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe40, bMaskDWord, 0x02140148);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe44, bMaskDWord, 0x681604a2);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe4c, bMaskDWord, 0x000028d1);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe60, bMaskDWord, 0x0214014d);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe64, bMaskDWord, 0x281608ba);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe6c, bMaskDWord, 0x000028d1);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe48, bMaskDWord, 0xfb000001);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe48, bMaskDWord, 0xf8000001);
  udelay(2000);
  rtl8192_setBBreg(dev, 0xc04, bMaskDWord, 0x00a05433);
  udelay(5);
  rtl8192_setBBreg(dev, 0xc08, bMaskDWord, 0x000000e4);
  udelay(5);
  rtl8192_setBBreg(dev, 0xe28, bMaskDWord, 0x0);


  reg = rtl8192_QueryBBReg(dev, 0xeac, bMaskDWord);


  if (!(reg&(BIT27|BIT28|BIT30|BIT31)))
  {
   old_value = (rtl8192_QueryBBReg(dev, 0xc80, bMaskDWord) & 0x3FF);


   X = (rtl8192_QueryBBReg(dev, 0xe94, bMaskDWord) & 0x03FF0000)>>16;
   TXA[RF90_PATH_A] = (X * old_value)/0x100;
   reg = rtl8192_QueryBBReg(dev, 0xc80, bMaskDWord);
   reg = (reg & 0xFFFFFC00) | (u32)TXA[RF90_PATH_A];
   rtl8192_setBBreg(dev, 0xc80, bMaskDWord, reg);
   udelay(5);


   Y = ( rtl8192_QueryBBReg(dev, 0xe9C, bMaskDWord) & 0x03FF0000)>>16;
   TX0[RF90_PATH_C] = ((Y * old_value)/0x100);
   reg = rtl8192_QueryBBReg(dev, 0xc80, bMaskDWord);
   reg = (reg & 0xffc0ffff) |((u32) (TX0[RF90_PATH_C]&0x3F)<<16);
   rtl8192_setBBreg(dev, 0xc80, bMaskDWord, reg);
   reg = rtl8192_QueryBBReg(dev, 0xc94, bMaskDWord);
   reg = (reg & 0x0fffffff) |(((Y&0x3c0)>>6)<<28);
   rtl8192_setBBreg(dev, 0xc94, bMaskDWord, reg);
   udelay(5);


   reg = rtl8192_QueryBBReg(dev, 0xc14, bMaskDWord);
   X = (rtl8192_QueryBBReg(dev, 0xea4, bMaskDWord) & 0x03FF0000)>>16;
   reg = (reg & 0xFFFFFC00) |X;
   rtl8192_setBBreg(dev, 0xc14, bMaskDWord, reg);
   Y = (rtl8192_QueryBBReg(dev, 0xeac, bMaskDWord) & 0x003F0000)>>16;
   reg = (reg & 0xFFFF03FF) |Y<<10;
   rtl8192_setBBreg(dev, 0xc14, bMaskDWord, reg);
   udelay(5);
   old_value = (rtl8192_QueryBBReg(dev, 0xc88, bMaskDWord) & 0x3FF);


   X = (rtl8192_QueryBBReg(dev, 0xeb4, bMaskDWord) & 0x03FF0000)>>16;
   reg = rtl8192_QueryBBReg(dev, 0xc88, bMaskDWord);
   TXA[RF90_PATH_A] = (X * old_value) / 0x100;
   reg = (reg & 0xFFFFFC00) | TXA[RF90_PATH_A];
   rtl8192_setBBreg(dev, 0xc88, bMaskDWord, reg);
   udelay(5);


   Y = (rtl8192_QueryBBReg(dev, 0xebc, bMaskDWord)& 0x03FF0000)>>16;
   TX0[RF90_PATH_C] = ((Y * old_value)/0x100);
   reg = rtl8192_QueryBBReg(dev, 0xc88, bMaskDWord);
   reg = (reg & 0xffc0ffff) |( (TX0[RF90_PATH_C]&0x3F)<<16);
   rtl8192_setBBreg(dev, 0xc88, bMaskDWord, reg);
   reg = rtl8192_QueryBBReg(dev, 0xc9c, bMaskDWord);
   reg = (reg & 0x0fffffff) |(((Y&0x3c0)>>6)<<28);
   rtl8192_setBBreg(dev, 0xc9c, bMaskDWord, reg);
   udelay(5);


   reg = rtl8192_QueryBBReg(dev, 0xc1c, bMaskDWord);
   X = (rtl8192_QueryBBReg(dev, 0xec4, bMaskDWord) & 0x03FF0000)>>16;
   reg = (reg & 0xFFFFFC00) |X;
   rtl8192_setBBreg(dev, 0xc1c, bMaskDWord, reg);

   Y = (rtl8192_QueryBBReg(dev, 0xecc, bMaskDWord) & 0x003F0000)>>16;
   reg = (reg & 0xFFFF03FF) |Y<<10;
   rtl8192_setBBreg(dev, 0xc1c, bMaskDWord, reg);
   udelay(5);

   RT_TRACE(COMP_INIT, "PHY_IQCalibrate OK\n");
   break;
  }

 }







}
