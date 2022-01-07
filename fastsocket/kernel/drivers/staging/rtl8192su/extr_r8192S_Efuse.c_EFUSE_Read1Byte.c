
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int EFUSE_MAC_LEN ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

extern u8
EFUSE_Read1Byte(struct net_device* dev, u16 Address)
{
 u8 data;
 u8 Bytetemp = {0x00};
 u8 temp = {0x00};
 u32 k=0;

 if (Address < EFUSE_MAC_LEN)
 {

  temp = Address & 0xFF;
  write_nic_byte(dev, EFUSE_CTRL+1, temp);
  Bytetemp = read_nic_byte(dev, EFUSE_CTRL+2);

  temp = ((Address >> 8) & 0x03) | (Bytetemp & 0xFC);
  write_nic_byte(dev, EFUSE_CTRL+2, temp);


  Bytetemp = read_nic_byte(dev, EFUSE_CTRL+3);
  temp = Bytetemp & 0x7F;
  write_nic_byte(dev, EFUSE_CTRL+3, temp);


  Bytetemp = read_nic_byte(dev, EFUSE_CTRL+3);
  while(!(Bytetemp & 0x80))
  {
   Bytetemp = read_nic_byte(dev, EFUSE_CTRL+3);
   k++;
   if(k==1000)
   {
    k=0;
    break;
   }
  }
  data=read_nic_byte(dev, EFUSE_CTRL);
  return data;
 }
 else
  return 0xFF;

}
