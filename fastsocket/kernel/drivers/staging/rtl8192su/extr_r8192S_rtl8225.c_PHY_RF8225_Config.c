
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int NumTotalRFPath; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_RF8225_Config_HardCode (struct net_device*) ;
 int phy_RF8225_Config_ParaFile (struct net_device*) ;

bool PHY_RF8225_Config(struct net_device* dev )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool rtStatus = 1;
 priv->NumTotalRFPath = 2;
   phy_RF8225_Config_HardCode(dev);
   phy_RF8225_Config_ParaFile(dev);






 return rtStatus;

}
