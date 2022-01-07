
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ IC_Cut; } ;
struct net_device {int dummy; } ;


 scalar_t__ IC_VersionCut_D ;
 int dm_InitializeTXPowerTracking_TSSI (struct net_device*) ;
 int dm_InitializeTXPowerTracking_ThermalMeter (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void dm_initialize_txpower_tracking(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);





 if(priv->IC_Cut >= IC_VersionCut_D)
  dm_InitializeTXPowerTracking_TSSI(dev);
 else
  dm_InitializeTXPowerTracking_ThermalMeter(dev);

}
