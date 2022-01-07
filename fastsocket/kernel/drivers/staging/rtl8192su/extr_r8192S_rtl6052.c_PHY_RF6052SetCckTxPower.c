
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int bDynamicTxLowPower; scalar_t__ bIgnoreDiffRateTxPowerOffset; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int scanning; } ;


 int RF6052_MAX_TX_PWR ;
 int bTxAGCRateCCK ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rTxAGC_CCK_Mcs32 ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int) ;

extern void PHY_RF6052SetCckTxPower(struct net_device* dev, u8 powerlevel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 TxAGC=0;

 if(priv->ieee80211->scanning == 1)
  TxAGC = 0x3f;
 else if(priv->bDynamicTxLowPower == 1)
  TxAGC = 0x22;
 else
  TxAGC = powerlevel;


 if(priv->bIgnoreDiffRateTxPowerOffset)
  TxAGC = powerlevel;

 if(TxAGC > RF6052_MAX_TX_PWR)
  TxAGC = RF6052_MAX_TX_PWR;


 rtl8192_setBBreg(dev, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);

}
