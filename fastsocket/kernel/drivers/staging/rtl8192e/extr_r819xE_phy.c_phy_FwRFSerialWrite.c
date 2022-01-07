
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;


 int QPNR ;
 int read_nic_dword (struct net_device*,int ) ;
 int udelay (int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static void
phy_FwRFSerialWrite(
  struct net_device* dev,
  RF90_RADIO_PATH_E eRFPath,
  u32 Offset,
  u32 Data )
{
 u8 time = 0;
 Data |= ((Offset&0xFF)<<12);

 Data |= ((eRFPath&0x3)<<20);

 Data |= 0x400000;

 Data |= 0x80000000;


 while (read_nic_dword(dev, QPNR)&0x80000000)
 {

  if (time++ < 100)
  {

   udelay(10);
  }
  else
   break;
 }


 write_nic_dword(dev, QPNR, Data);





}
