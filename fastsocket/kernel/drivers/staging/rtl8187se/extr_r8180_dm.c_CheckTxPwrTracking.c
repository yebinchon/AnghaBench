
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {scalar_t__ bToUpdateTxPwr; int bTxPowerTrack; } ;
struct net_device {int dummy; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;

bool
CheckTxPwrTracking( struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 if(!priv->bTxPowerTrack)
 {
  return 0;
 }
 if(priv->bToUpdateTxPwr)
 {
  return 0;
 }

 return 1;
}
