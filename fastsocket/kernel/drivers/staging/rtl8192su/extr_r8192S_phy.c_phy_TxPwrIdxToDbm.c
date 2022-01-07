
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
typedef int WIRELESS_MODE ;






__attribute__((used)) static long phy_TxPwrIdxToDbm(
 struct net_device* dev,
 WIRELESS_MODE WirelessMode,
 u8 TxPwrIdx
 )
{

 long Offset = 0;
 long PwrOutDbm = 0;
 switch(WirelessMode)
 {
 case 130:
  Offset = -7;
  break;

 case 129:
 case 128:
  Offset = -8;
  break;
 default:
  break;
 }

 PwrOutDbm = TxPwrIdx / 2 + Offset;

 return PwrOutDbm;
}
