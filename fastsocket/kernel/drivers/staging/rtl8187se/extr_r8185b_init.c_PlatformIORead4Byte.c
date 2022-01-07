
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int read_nic_dword (struct net_device*,int ) ;

u32
PlatformIORead4Byte(
 struct net_device *dev,
 u32 offset
 )
{
 u32 data = 0;

 data = read_nic_dword(dev, offset);


 return data;
}
