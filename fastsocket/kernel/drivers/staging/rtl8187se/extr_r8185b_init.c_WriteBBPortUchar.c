
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int PhyAddr ;
 int PhyDataR ;
 scalar_t__ PlatformIORead1Byte (struct net_device*,int ) ;
 int PlatformIOWrite4Byte (struct net_device*,int ,int) ;

void
WriteBBPortUchar(
 struct net_device *dev,
 u32 Data
 )
{

 u8 RegisterContent;
 u8 UCharData;

 UCharData = (u8)((Data & 0x0000ff00) >> 8);
 PlatformIOWrite4Byte(dev, PhyAddr, Data);

 {
  PlatformIOWrite4Byte(dev, PhyAddr, Data & 0xffffff7f);
  RegisterContent = PlatformIORead1Byte(dev, PhyDataR);


 }
}
