
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {scalar_t__ CurrAntennaIndex; } ;
struct net_device {int dummy; } ;


 int SetAntenna8185 (struct net_device*,int) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

bool
SwitchAntenna(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 bool bResult;

 if(priv->CurrAntennaIndex == 0)
 {
   bResult = SetAntenna8185(dev, 1);



 }
 else
 {
   bResult = SetAntenna8185(dev, 0);



 }

 return bResult;
}
