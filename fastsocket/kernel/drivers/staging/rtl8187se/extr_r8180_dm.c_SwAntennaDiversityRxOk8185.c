
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int AdRxSignalStrength; int AdAuxAntennaRxOkCnt; int AdMainAntennaRxOkCnt; scalar_t__ LastRxPktAntenna; int AdRxOkCnt; } ;
struct net_device {int dummy; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;

void
SwAntennaDiversityRxOk8185(
 struct net_device *dev,
 u8 SignalStrength
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);



 priv->AdRxOkCnt++;

 if( priv->AdRxSignalStrength != -1)
 {
  priv->AdRxSignalStrength = ((priv->AdRxSignalStrength*7) + (SignalStrength*3)) / 10;
 }
 else
 {
  priv->AdRxSignalStrength = SignalStrength;
 }

 if( priv->LastRxPktAntenna )
  priv->AdMainAntennaRxOkCnt++;
 else
  priv->AdAuxAntennaRxOkCnt++;


}
