
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int rf_chip; } ;
struct net_device {int dummy; } ;




 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

u8
GetSupportedWirelessMode8185(
 struct net_device *dev
)
{
 u8 btSupportedWirelessMode = 0;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 switch(priv->rf_chip)
 {
 case 129:
 case 128:
  btSupportedWirelessMode = (WIRELESS_MODE_B | WIRELESS_MODE_G);
  break;
 default:
  btSupportedWirelessMode = WIRELESS_MODE_B;
  break;
 }

 return btSupportedWirelessMode;
}
