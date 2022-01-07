
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int* TxPowerLevelCCK; int* TxPowerLevelOFDM24G; int rf_chip; } ;
struct net_device {int dummy; } ;


 int Adapter ;
 int COMP_ERR ;
 int PHY_SetRF8225CckTxPower (int ,int) ;
 int PHY_SetRF8225OfdmTxPower (int ,int) ;
 int PHY_SetRF8256CCKTxPower (struct net_device*,int) ;
 int PHY_SetRF8256OFDMTxPower (struct net_device*,int) ;



 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void rtl8192_SetTxPowerLevel(struct net_device *dev, u8 channel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 powerlevel = priv->TxPowerLevelCCK[channel-1];
 u8 powerlevelOFDM24G = priv->TxPowerLevelOFDM24G[channel-1];

 switch(priv->rf_chip)
 {
 case 130:




  break;

 case 129:
  PHY_SetRF8256CCKTxPower(dev, powerlevel);
  PHY_SetRF8256OFDMTxPower(dev, powerlevelOFDM24G);
  break;

 case 128:
  break;
 default:
  RT_TRACE(COMP_ERR, "unknown rf chip ID in rtl8192_SetTxPowerLevel()\n");
  break;
 }
 return;
}
