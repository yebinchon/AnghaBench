
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ bHwRfOffAction; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 int COMP_POWER ;
 int COMP_RF ;
 int RT_TRACE (int ,char*,int) ;
 int SetRFPowerState8190 (struct net_device*,scalar_t__) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static bool
SetRFPowerState(
 struct net_device* dev,
 RT_RF_POWER_STATE eRFPowerState
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 bool bResult = 0;

 RT_TRACE(COMP_RF,"---------> SetRFPowerState(): eRFPowerState(%d)\n", eRFPowerState);



 if(eRFPowerState == priv->ieee80211->eRFPowerState)

 {
  RT_TRACE(COMP_POWER, "<--------- SetRFPowerState(): discard the request for eRFPowerState(%d) is the same.\n", eRFPowerState);
  return bResult;
 }

 bResult = SetRFPowerState8190(dev, eRFPowerState);

 RT_TRACE(COMP_POWER, "<--------- SetRFPowerState(): bResult(%d)\n", bResult);

 return bResult;
}
