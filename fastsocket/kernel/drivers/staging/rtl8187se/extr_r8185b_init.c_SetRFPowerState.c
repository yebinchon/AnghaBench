
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {scalar_t__ eRFPowerState; int rf_chip; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;




 int SetZebraRFPowerState8185 (struct net_device*,scalar_t__) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;

bool
SetRFPowerState(
 struct net_device *dev,
 RT_RF_POWER_STATE eRFPowerState
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 bool bResult = 0;


 if(eRFPowerState == priv->eRFPowerState)
 {

  return bResult;
 }

 switch(priv->rf_chip)
 {
  case 129:
  case 128:
    bResult = SetZebraRFPowerState8185(dev, eRFPowerState);
   break;

  default:
   printk("SetRFPowerState8185(): unknown RFChipID: 0x%X!!!\n", priv->rf_chip);
   break;;
}


 return bResult;
}
