
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct r8180_priv {scalar_t__ eRFPowerState; TYPE_1__ SwAntennaDiversityTimer; scalar_t__ up; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 int ANTENNA_DIVERSITY_TIMER_PERIOD ;
 scalar_t__ MSECS (int ) ;
 int SwAntennaDiversity (struct net_device*) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ eRfOff ;
 scalar_t__ eRfSleep ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 scalar_t__ jiffies ;

void
SwAntennaDiversityTimerCallback(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 RT_RF_POWER_STATE rtState;







 rtState = priv->eRFPowerState;
 do{
  if (rtState == eRfOff)
  {

   break;
  }
  else if (rtState == eRfSleep)
  {


   break;
  }
  SwAntennaDiversity(dev);

 }while(0);

 if(priv->up)
 {
  priv->SwAntennaDiversityTimer.expires = jiffies + MSECS(ANTENNA_DIVERSITY_TIMER_PERIOD);
  add_timer(&priv->SwAntennaDiversityTimer);
 }


}
