
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ LegacyHTTxPowerDiff; int chan; scalar_t__** RfTxPwrLevelOfdm2T; scalar_t__** RfTxPwrLevelOfdm1T; scalar_t__** RfTxPwrLevelCck; scalar_t__* TxPowerLevelOFDM24G_C; scalar_t__* TxPowerLevelOFDM24G_A; scalar_t__* TxPowerLevelOFDM24G; scalar_t__* TxPowerLevelCCK_C; scalar_t__* TxPowerLevelCCK_A; scalar_t__* TxPowerLevelCCK; } ;
struct net_device {int dummy; } ;


 int PHY_SetTxPowerLevel8192S (struct net_device*,int ) ;
 int TRUE ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_N_24G ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ phy_DbmToTxPwrIdx (struct net_device*,int ,long) ;

bool PHY_UpdateTxPowerDbm8192S(struct net_device* dev, long powerInDbm)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 idx;
 u8 rf_path;


 u8 CckTxPwrIdx = phy_DbmToTxPwrIdx(dev, WIRELESS_MODE_B, powerInDbm);
 u8 OfdmTxPwrIdx = phy_DbmToTxPwrIdx(dev, WIRELESS_MODE_N_24G, powerInDbm);

 if(OfdmTxPwrIdx - priv->LegacyHTTxPowerDiff > 0)
  OfdmTxPwrIdx -= priv->LegacyHTTxPowerDiff;
 else
  OfdmTxPwrIdx = 0;

 for(idx = 0; idx < 14; idx++)
 {
  priv->TxPowerLevelCCK[idx] = CckTxPwrIdx;
  priv->TxPowerLevelCCK_A[idx] = CckTxPwrIdx;
  priv->TxPowerLevelCCK_C[idx] = CckTxPwrIdx;
  priv->TxPowerLevelOFDM24G[idx] = OfdmTxPwrIdx;
  priv->TxPowerLevelOFDM24G_A[idx] = OfdmTxPwrIdx;
  priv->TxPowerLevelOFDM24G_C[idx] = OfdmTxPwrIdx;

  for (rf_path = 0; rf_path < 2; rf_path++)
  {
   priv->RfTxPwrLevelCck[rf_path][idx] = CckTxPwrIdx;
   priv->RfTxPwrLevelOfdm1T[rf_path][idx] = priv->RfTxPwrLevelOfdm2T[rf_path][idx] = OfdmTxPwrIdx;

  }
 }

 PHY_SetTxPowerLevel8192S(dev, priv->chan);

 return TRUE;
}
