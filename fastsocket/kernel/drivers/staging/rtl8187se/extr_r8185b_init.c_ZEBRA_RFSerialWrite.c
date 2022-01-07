
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
struct TYPE_3__ {int enableB; int data; int clk; } ;
struct TYPE_4__ {int longData; TYPE_1__ struc; } ;
typedef TYPE_2__ ThreeWireReg ;


 int RFPinsEnable ;
 int RFPinsOutput ;
 int RFPinsSelect ;
 int RF_SW_CFG_SI ;
 int RF_SW_CONFIG ;
 int SetOutputEnableOfRfPins (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_word (struct net_device*,int ) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void
ZEBRA_RFSerialWrite(
 struct net_device *dev,
 u32 data2Write,
 u8 totalLength,
 u8 low2high
 )
{
 ThreeWireReg twreg;
 int i;
 u16 oval,oval2,oval3;
 u32 mask;
 u16 UshortBuffer;

 u8 u1bTmp;

 u1bTmp = read_nic_byte(dev, RF_SW_CONFIG);
 u1bTmp |= RF_SW_CFG_SI;
 write_nic_byte(dev, RF_SW_CONFIG, u1bTmp);
 UshortBuffer = read_nic_word(dev, RFPinsOutput);
 oval = UshortBuffer & 0xfff8;

 oval2 = read_nic_word(dev, RFPinsEnable);
 oval3 = read_nic_word(dev, RFPinsSelect);


 oval3 &= 0xfff8;

 write_nic_word(dev, RFPinsEnable, (oval2|0x0007));
 write_nic_word(dev, RFPinsSelect, (oval3|0x0007));
 udelay(10);



 twreg.longData = 0;
 twreg.struc.enableB = 1;
 write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
 udelay(2);
 twreg.struc.enableB = 0;
 write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
 udelay(10);

 mask = (low2high)?0x01:((u32)0x01<<(totalLength-1));

 for(i=0; i<totalLength/2; i++)
 {
  twreg.struc.data = ((data2Write&mask)!=0) ? 1 : 0;
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
  twreg.struc.clk = 1;
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));

  mask = (low2high)?(mask<<1):(mask>>1);
  twreg.struc.data = ((data2Write&mask)!=0) ? 1 : 0;
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
  twreg.struc.clk = 0;
  write_nic_word(dev, RFPinsOutput, (twreg.longData|oval));
  mask = (low2high)?(mask<<1):(mask>>1);
 }

 twreg.struc.enableB = 1;
 twreg.struc.clk = 0;
 twreg.struc.data = 0;
 write_nic_word(dev, RFPinsOutput, twreg.longData|oval);
 udelay(10);

 write_nic_word(dev, RFPinsOutput, oval|0x0004);
 write_nic_word(dev, RFPinsSelect, oval3|0x0000);

 SetOutputEnableOfRfPins(dev);
}
