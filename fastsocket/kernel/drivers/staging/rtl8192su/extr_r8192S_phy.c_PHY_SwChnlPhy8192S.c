
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int chan; scalar_t__ rf_chip; void* SwChnlInProgress; scalar_t__ SwChnlStep; scalar_t__ SwChnlStage; } ;
struct net_device {int dummy; } ;


 int COMP_SCAN ;
 void* FALSE ;
 scalar_t__ RF_PSEUDO_11N ;
 scalar_t__ RT_CANNOT_IO (struct net_device*) ;
 int RT_TRACE (int ,char*,int) ;
 void* TRUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_FinishSwChnlNow (struct net_device*,int) ;

void PHY_SwChnlPhy8192S(
 struct net_device* dev,
 u8 channel
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 RT_TRACE(COMP_SCAN, "==>PHY_SwChnlPhy8192S(), switch to channel %d.\n", priv->chan);
 if(priv->SwChnlInProgress)
  return;


 if(priv->rf_chip == RF_PSEUDO_11N)
 {
  priv->SwChnlInProgress=FALSE;
  return;
 }

 priv->SwChnlInProgress = TRUE;
 if( channel == 0)
  channel = 1;

 priv->chan=channel;

 priv->SwChnlStage = 0;
 priv->SwChnlStep = 0;

 phy_FinishSwChnlNow(dev,channel);

 priv->SwChnlInProgress = FALSE;
}
