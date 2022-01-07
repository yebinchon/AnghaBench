
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {int AdTickCount; int AdCheckPeriod; int AdRxSignalStrength; int AdRxSsThreshold; int bAdSwitchedChecking; scalar_t__ AdRxOkCnt; int AdRxSsBeforeSwitched; int AdMaxRxSsThreshold; int AdMaxCheckPeriod; int AdMinCheckPeriod; scalar_t__ AdMainAntennaRxOkCnt; scalar_t__ AdAuxAntennaRxOkCnt; int CurrAntennaIndex; int bHWAdSwitched; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ IEEE80211_LINKED ;
 int SwitchAntenna (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*,int,int) ;

void
SwAntennaDiversity(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 bool bSwCheckSS=0;



 if(bSwCheckSS)
 {
  priv->AdTickCount++;

  printk("(1) AdTickCount: %d, AdCheckPeriod: %d\n",
   priv->AdTickCount, priv->AdCheckPeriod);
  printk("(2) AdRxSignalStrength: %ld, AdRxSsThreshold: %ld\n",
   priv->AdRxSignalStrength, priv->AdRxSsThreshold);
 }



 if(priv->ieee80211->state != IEEE80211_LINKED)
 {


  priv->bAdSwitchedChecking = 0;

  SwitchAntenna(dev);
 }

 else if(priv->AdRxOkCnt == 0)
 {


  priv->bAdSwitchedChecking = 0;
  SwitchAntenna(dev);
 }

 else if(priv->bAdSwitchedChecking == 1)
 {


  priv->bAdSwitchedChecking = 0;


  priv->AdRxSsThreshold = (priv->AdRxSignalStrength + priv->AdRxSsBeforeSwitched) / 2;

  priv->AdRxSsThreshold = (priv->AdRxSsThreshold > priv->AdMaxRxSsThreshold) ?
     priv->AdMaxRxSsThreshold: priv->AdRxSsThreshold;
  if(priv->AdRxSignalStrength < priv->AdRxSsBeforeSwitched)
  {




   priv->AdCheckPeriod *= 2;


   if(priv->AdCheckPeriod > priv->AdMaxCheckPeriod)
    priv->AdCheckPeriod = priv->AdMaxCheckPeriod;


   SwitchAntenna(dev);
  }
  else
  {




   priv->AdCheckPeriod = priv->AdMinCheckPeriod;
  }



 }


 else
 {


  priv->AdTickCount = 0;
  if((priv->AdMainAntennaRxOkCnt < priv->AdAuxAntennaRxOkCnt)
   && (priv->CurrAntennaIndex == 0))
  {





   SwitchAntenna(dev);
   priv->bHWAdSwitched = 1;
  }
  else if((priv->AdAuxAntennaRxOkCnt < priv->AdMainAntennaRxOkCnt)
   && (priv->CurrAntennaIndex == 1))
  {





   SwitchAntenna(dev);
   priv->bHWAdSwitched = 1;
  }
  else
  {





   priv->bHWAdSwitched = 0;
  }
  if( (!priv->bHWAdSwitched) && (bSwCheckSS))
  {


  if(priv->AdRxSignalStrength < priv->AdRxSsThreshold)
  {



   priv->AdRxSsBeforeSwitched = priv->AdRxSignalStrength;
   priv->bAdSwitchedChecking = 1;

   SwitchAntenna(dev);
  }
  else
  {



   priv->bAdSwitchedChecking = 0;

   if( (priv->AdRxSignalStrength > (priv->AdRxSsThreshold + 10)) &&
    priv->AdRxSsThreshold <= priv->AdMaxRxSsThreshold)
   {
    priv->AdRxSsThreshold = (priv->AdRxSsThreshold + priv->AdRxSignalStrength) / 2;
    priv->AdRxSsThreshold = (priv->AdRxSsThreshold > priv->AdMaxRxSsThreshold) ?
            priv->AdMaxRxSsThreshold: priv->AdRxSsThreshold;
   }


   if( priv->AdCheckPeriod > priv->AdMinCheckPeriod )
   {
    priv->AdCheckPeriod /= 2;
   }
  }
  }
 }


 priv->AdRxOkCnt = 0;
 priv->AdMainAntennaRxOkCnt = 0;
 priv->AdAuxAntennaRxOkCnt = 0;





}
