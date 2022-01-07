
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ WFM3 ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;

extern void PHY_SetBeaconHwReg( struct net_device* dev, u16 BeaconInterval)
{
 u32 NewBeaconNum;

 NewBeaconNum = BeaconInterval *32 - 64;


 write_nic_dword(dev, WFM3+4, NewBeaconNum);
 write_nic_dword(dev, WFM3, 0xB026007C);
}
