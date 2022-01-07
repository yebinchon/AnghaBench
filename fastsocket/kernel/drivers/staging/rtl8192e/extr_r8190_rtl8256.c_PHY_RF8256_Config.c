
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int NumTotalRFPath; } ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int RTL819X_TOTAL_RF_PATH ;
 int RT_STATUS_SUCCESS ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_RF8256_Config_ParaFile (struct net_device*) ;

RT_STATUS PHY_RF8256_Config(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 RT_STATUS rtStatus = RT_STATUS_SUCCESS;

 priv->NumTotalRFPath = RTL819X_TOTAL_RF_PATH;

 rtStatus = phy_RF8256_Config_ParaFile(dev);

 return rtStatus;
}
