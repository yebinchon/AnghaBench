
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int read_nic_word (struct net_device*,int ) ;
 int write_nic_word (struct net_device*,int ,int ) ;

void
PlatformIOWrite2Byte(
 struct net_device *dev,
 u32 offset,
 u16 data
 )
{
 write_nic_word(dev, offset, data);
 read_nic_word(dev, offset);


}
