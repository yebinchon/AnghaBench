
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int bSwRfProcessing; int eInactivePowerState; } ;
struct net_device {int dummy; } ;


 int MgntActSet_RF_State (struct net_device*,int ,int ) ;
 int RF_CHANGE_BY_IPS ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void
InactivePowerSave(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 priv->bSwRfProcessing = 1;

 MgntActSet_RF_State(dev, priv->eInactivePowerState, RF_CHANGE_BY_IPS);





 priv->bSwRfProcessing = 0;
}
