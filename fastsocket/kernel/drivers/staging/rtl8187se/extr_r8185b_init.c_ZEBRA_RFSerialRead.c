
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int enableB; int clk; int read_write; int data; } ;
struct TYPE_4__ {int longData; TYPE_1__ struc; } ;
typedef TYPE_2__ ThreeWireReg ;


 int RFPinsEnable ;
 int RFPinsInput ;
 int RFPinsOutput ;
 int RFPinsSelect ;
 int RF_SW_CFG_SI ;
 int RF_SW_CONFIG ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_word (struct net_device*,int ) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void
ZEBRA_RFSerialRead(
 struct net_device *dev,
 u32 data2Write,
 u8 wLength,
 u32 *data2Read,
 u8 rLength,
 u8 low2high
 )
{
 ThreeWireReg twreg;
 int i;
 u16 oval,oval2,oval3,tmp, wReg80;
 u32 mask;
 u8 u1bTmp;
 ThreeWireReg tdata;

 {
  u1bTmp = read_nic_byte(dev, RF_SW_CONFIG);
  u1bTmp |= RF_SW_CFG_SI;
  write_nic_byte(dev, RF_SW_CONFIG, u1bTmp);
 }

 wReg80 = oval = read_nic_word(dev, RFPinsOutput);
 oval2 = read_nic_word(dev, RFPinsEnable);
 oval3 = read_nic_word(dev, RFPinsSelect);

 write_nic_word(dev, RFPinsEnable, oval2|0xf);
 write_nic_word(dev, RFPinsSelect, oval3|0xf);

 *data2Read = 0;




 oval &= ~0xf;


 twreg.longData = 0;
 twreg.struc.enableB = 1;
 write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(4);

 twreg.longData = 0;
 twreg.struc.enableB = 0;
 twreg.struc.clk = 0;
 twreg.struc.read_write = 0;
 write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(5);

 mask = (low2high) ? 0x01 : ((u32)0x01<<(32-1));
 for(i = 0; i < wLength/2; i++)
 {
  twreg.struc.data = ((data2Write&mask) != 0) ? 1 : 0;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(1);
  twreg.struc.clk = 1;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);

  mask = (low2high) ? (mask<<1): (mask>>1);

  if(i == 2)
  {




   twreg.struc.read_write=1;
   write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
   twreg.struc.clk = 0;
   write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
   break;
  }
  twreg.struc.data = ((data2Write&mask) != 0) ? 1: 0;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);

  twreg.struc.clk = 0;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(1);

  mask = (low2high) ? (mask<<1) : (mask>>1);
 }

 twreg.struc.clk = 0;
 twreg.struc.data = 0;
 write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
 mask = (low2high) ? 0x01 : ((u32)0x01 << (12-1));






 write_nic_word(dev, RFPinsEnable, ( ((oval2|0x0E) & (~0x01))) );

 for(i = 0; i < rLength; i++)
 {
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(1);
  twreg.struc.clk = 1;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);
  tmp = read_nic_word(dev, RFPinsInput);
  tdata.longData = tmp;
  *data2Read |= tdata.struc.clk ? mask : 0;

  twreg.struc.clk = 0;
  write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);

  mask = (low2high) ? (mask<<1) : (mask>>1);
 }
 twreg.struc.enableB = 1;
 twreg.struc.clk = 0;
 twreg.struc.data = 0;
 twreg.struc.read_write = 1;
 write_nic_word(dev, RFPinsOutput, twreg.longData|oval); udelay(2);


 write_nic_word(dev, RFPinsEnable, oval2);

 write_nic_word(dev, RFPinsSelect, oval3);

 write_nic_word(dev, RFPinsOutput, 0x3a0);

}
