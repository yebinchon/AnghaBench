
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ CurrentOfdm24GTxPwrIdx; scalar_t__ LegacyHTTxPowerDiff; scalar_t__ CurrentCckTxPwrIdx; } ;
struct net_device {int dummy; } ;


 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WIRELESS_MODE_N_24G ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 long phy_TxPwrIdxToDbm (struct net_device*,int ,scalar_t__) ;

void
PHY_GetTxPowerLevel8192S(
 struct net_device* dev,
  long* powerlevel
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 TxPwrLevel = 0;
 long TxPwrDbm;






 TxPwrLevel = priv->CurrentCckTxPwrIdx;
 TxPwrDbm = phy_TxPwrIdxToDbm(dev, WIRELESS_MODE_B, TxPwrLevel);


 TxPwrLevel = priv->CurrentOfdm24GTxPwrIdx + priv->LegacyHTTxPowerDiff;


 if(phy_TxPwrIdxToDbm(dev, WIRELESS_MODE_G, TxPwrLevel) > TxPwrDbm)
  TxPwrDbm = phy_TxPwrIdxToDbm(dev, WIRELESS_MODE_G, TxPwrLevel);


 TxPwrLevel = priv->CurrentOfdm24GTxPwrIdx;


 if(phy_TxPwrIdxToDbm(dev, WIRELESS_MODE_N_24G, TxPwrLevel) > TxPwrDbm)
  TxPwrDbm = phy_TxPwrIdxToDbm(dev, WIRELESS_MODE_N_24G, TxPwrLevel);

 *powerlevel = TxPwrDbm;
}
