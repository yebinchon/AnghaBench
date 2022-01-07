
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int rf_chip; int ChannelAccessSetting; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {int mode; } ;
typedef int WIRELESS_MODE ;


 int ActUpdateChannelAccessSetting (struct net_device*,int,int *) ;
 int DMESG (char*) ;
 int DMESGW (char*,int,...) ;
 int GetSupportedWirelessMode8185 (struct net_device*) ;


 int WIRELESS_MODE_A ;
 int WIRELESS_MODE_AUTO ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void
ActSetWirelessMode8185(
 struct net_device *dev,
 u8 btWirelessMode
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;

 u8 btSupportedWirelessMode = GetSupportedWirelessMode8185(dev);

 if( (btWirelessMode & btSupportedWirelessMode) == 0 )
 {
  DMESGW("ActSetWirelessMode8185(): WirelessMode(%d) is not supported (%d)!\n",
   btWirelessMode, btSupportedWirelessMode);
  return;
 }


 if (btWirelessMode == WIRELESS_MODE_AUTO)
 {
  if((btSupportedWirelessMode & WIRELESS_MODE_A))
  {
   btWirelessMode = WIRELESS_MODE_A;
  }
  else if((btSupportedWirelessMode & WIRELESS_MODE_G))
  {
   btWirelessMode = WIRELESS_MODE_G;
  }
  else if((btSupportedWirelessMode & WIRELESS_MODE_B))
  {
   btWirelessMode = WIRELESS_MODE_B;
  }
  else
  {
   DMESGW("ActSetWirelessMode8185(): No valid wireless mode supported, btSupportedWirelessMode(%x)!!!\n",
      btSupportedWirelessMode);
   btWirelessMode = WIRELESS_MODE_B;
  }
 }




 switch(priv->rf_chip)
 {
 case 129:
 case 128:
  {


   ieee->mode = (WIRELESS_MODE)btWirelessMode;
  }
  break;

 default:
  DMESGW("ActSetWirelessMode8185(): unsupported RF: 0x%X !!!\n", priv->rf_chip);
  break;
 }


 if( ieee->mode == WIRELESS_MODE_A ){
  DMESG("WIRELESS_MODE_A\n");
 }
 else if( ieee->mode == WIRELESS_MODE_B ){
  DMESG("WIRELESS_MODE_B\n");
 }
 else if( ieee->mode == WIRELESS_MODE_G ){
  DMESG("WIRELESS_MODE_G\n");
 }

 ActUpdateChannelAccessSetting( dev, ieee->mode, &priv->ChannelAccessSetting);
}
