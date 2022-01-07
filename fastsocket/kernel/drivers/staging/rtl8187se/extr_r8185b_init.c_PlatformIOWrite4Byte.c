
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 unsigned char BIT7 ;
 scalar_t__ PhyAddr ;
 unsigned char PlatformIORead1Byte (struct net_device*,scalar_t__) ;
 int PlatformIOWrite1Byte (struct net_device*,scalar_t__,unsigned char) ;
 int mdelay (int) ;
 int read_nic_dword (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,unsigned char) ;
 int write_nic_dword (struct net_device*,scalar_t__,scalar_t__) ;

void
PlatformIOWrite4Byte(
 struct net_device *dev,
 u32 offset,
 u32 data
 )
{

if (offset == PhyAddr)
 {
  unsigned char cmdByte;
  unsigned long dataBytes;
  unsigned char idx;
  u8 u1bTmp;

  cmdByte = (u8)(data & 0x000000ff);
  dataBytes = data>>8;
  for(idx = 0; idx < 30; idx++)
  {
   u1bTmp = PlatformIORead1Byte(dev, PhyAddr);
   if((u1bTmp & BIT7) == 0)
    break;
   else
    mdelay(10);
  }

  for(idx=0; idx < 3; idx++)
  {
   PlatformIOWrite1Byte(dev,offset+1+idx,((u8*)&dataBytes)[idx] );
  }
  write_nic_byte(dev, offset, cmdByte);


 }

 else{
  write_nic_dword(dev, offset, data);
  read_nic_dword(dev, offset);
 }
}
