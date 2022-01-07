
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ IC_Cut; } ;
struct net_device {int dummy; } ;


 scalar_t__ IC_VersionCut_D ;
 int dm_CheckTXPowerTracking_TSSI (struct net_device*) ;
 int dm_CheckTXPowerTracking_ThermalMeter (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_check_txpower_tracking(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);






 if(priv->IC_Cut >= IC_VersionCut_D)
  dm_CheckTXPowerTracking_TSSI(dev);
 else
  dm_CheckTXPowerTracking_ThermalMeter(dev);


}
