
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int PhyAddr ;
 int PhyDataR ;
 int PlatformIORead1Byte (struct net_device*,int ) ;
 int PlatformIOWrite4Byte (struct net_device*,int ,int) ;

u8
ReadBBPortUchar(
 struct net_device *dev,
 u32 addr
 )
{

 u8 RegisterContent;

 PlatformIOWrite4Byte(dev, PhyAddr, addr & 0xffffff7f);
 RegisterContent = PlatformIORead1Byte(dev, PhyDataR);

 return RegisterContent;
}
