
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
typedef int WIRELESS_MODE ;


 scalar_t__ MAX_TXPWR_IDX_NMODE_92S ;




__attribute__((used)) static u8 phy_DbmToTxPwrIdx(
 struct net_device* dev,
 WIRELESS_MODE WirelessMode,
 long PowerInDbm
 )
{

 u8 TxPwrIdx = 0;
 long Offset = 0;
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

 if((PowerInDbm - Offset) > 0)
 {
  TxPwrIdx = (u8)((PowerInDbm - Offset) * 2);
 }
 else
 {
  TxPwrIdx = 0;
 }


 if(TxPwrIdx > MAX_TXPWR_IDX_NMODE_92S)
  TxPwrIdx = MAX_TXPWR_IDX_NMODE_92S;

 return TxPwrIdx;
}
