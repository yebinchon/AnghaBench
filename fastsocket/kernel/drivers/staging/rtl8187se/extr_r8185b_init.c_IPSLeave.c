
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {scalar_t__ eRFPowerState; scalar_t__ RfOffReason; int eInactivePowerState; int bSwRfProcessing; scalar_t__ bInactivePs; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 int InactivePowerSave (struct net_device*) ;
 scalar_t__ RF_CHANGE_BY_IPS ;
 scalar_t__ eRfOff ;
 int eRfOn ;
 scalar_t__ eRfSleep ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void
IPSLeave(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 RT_RF_POWER_STATE rtState;

 if (priv->bInactivePs)
 {
  rtState = priv->eRFPowerState;
  if ((rtState == eRfOff || rtState == eRfSleep) && (!priv->bSwRfProcessing) && priv->RfOffReason <= RF_CHANGE_BY_IPS)
  {

   priv->eInactivePowerState = eRfOn;
   InactivePowerSave(dev);
  }
 }

}
