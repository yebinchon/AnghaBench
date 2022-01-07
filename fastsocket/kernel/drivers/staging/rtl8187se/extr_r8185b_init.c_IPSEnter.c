
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {scalar_t__ eRFPowerState; int eInactivePowerState; TYPE_1__* ieee80211; int bSwRfProcessing; scalar_t__ bInactivePs; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 scalar_t__ IEEE80211_LINKED ;
 int InactivePowerSave (struct net_device*) ;
 int eRfOff ;
 scalar_t__ eRfOn ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void
IPSEnter(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 RT_RF_POWER_STATE rtState;

 if (priv->bInactivePs)
 {
  rtState = priv->eRFPowerState;
  if (rtState == eRfOn && !priv->bSwRfProcessing
   && (priv->ieee80211->state != IEEE80211_LINKED ))
  {

   priv->eInactivePowerState = eRfOff;
   InactivePowerSave(dev);
  }
 }

}
