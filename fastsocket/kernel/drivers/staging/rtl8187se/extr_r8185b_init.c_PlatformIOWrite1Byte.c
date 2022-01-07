
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

void
PlatformIOWrite1Byte(
 struct net_device *dev,
 u32 offset,
 u8 data
 )
{
 write_nic_byte(dev, offset, data);
 read_nic_byte(dev, offset);

}
