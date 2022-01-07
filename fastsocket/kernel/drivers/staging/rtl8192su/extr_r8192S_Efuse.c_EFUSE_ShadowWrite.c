
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int efuse_ShadowWrite1Byte (struct net_device*,int,int) ;
 int efuse_ShadowWrite2Byte (struct net_device*,int,int) ;
 int efuse_ShadowWrite4Byte (struct net_device*,int,scalar_t__) ;

extern void
EFUSE_ShadowWrite( struct net_device* dev, u8 Type, u16 Offset,u32 Value)
{


 if (Offset >= 0x18 && Offset <= 0x1F)
  return;

 if (Type == 1)
  efuse_ShadowWrite1Byte(dev, Offset, (u8)Value);
 else if (Type == 2)
  efuse_ShadowWrite2Byte(dev, Offset, (u16)Value);
 else if (Type == 4)
  efuse_ShadowWrite4Byte(dev, Offset, (u32)Value);

}
