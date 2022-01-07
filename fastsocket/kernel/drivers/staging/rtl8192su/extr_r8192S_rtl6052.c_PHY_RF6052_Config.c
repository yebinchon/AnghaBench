
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ rf_type; int NumTotalRFPath; } ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 scalar_t__ RF_1T1R ;
 int RT_STATUS_SUCCESS ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_RF6052_Config_ParaFile (struct net_device*) ;

RT_STATUS PHY_RF6052_Config(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 if(priv->rf_type == RF_1T1R)
  priv->NumTotalRFPath = 1;
 else
  priv->NumTotalRFPath = 2;
   rtStatus = phy_RF6052_Config_ParaFile(dev);
 return rtStatus;

}
