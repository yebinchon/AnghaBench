
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int efuse_PgPacketWrite (struct net_device*,int,int,int*) ;
 int efuse_PowerSwitch (struct net_device*,int ) ;

extern void
EFUSE_ForceWriteVendorId( struct net_device* dev)
{
 u8 tmpdata[8] = {0xFF, 0xFF, 0xEC, 0x10, 0xFF, 0xFF, 0xFF, 0xFF};

 efuse_PowerSwitch(dev, TRUE);

 efuse_PgPacketWrite(dev, 1, 0xD, tmpdata);

 efuse_PowerSwitch(dev, FALSE);

}
