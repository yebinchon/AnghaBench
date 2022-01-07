
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int efuse_ShadowRead1Byte (struct net_device*,int ,int*) ;
 int efuse_ShadowRead2Byte (struct net_device*,int ,int *) ;
 int efuse_ShadowRead4Byte (struct net_device*,int ,int *) ;

extern void
EFUSE_ShadowRead( struct net_device* dev, u8 Type, u16 Offset, u32 *Value)
{


 if (Type == 1)
  efuse_ShadowRead1Byte(dev, Offset, (u8 *)Value);
 else if (Type == 2)
  efuse_ShadowRead2Byte(dev, Offset, (u16 *)Value);
 else if (Type == 4)
  efuse_ShadowRead4Byte(dev, Offset, (u32 *)Value);

}
