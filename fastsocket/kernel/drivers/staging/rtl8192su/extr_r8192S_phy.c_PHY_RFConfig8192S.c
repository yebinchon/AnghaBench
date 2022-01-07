
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ RT_STATUS ;


 scalar_t__ PHY_RF6052_Config (struct net_device*) ;





 scalar_t__ RT_STATUS_SUCCESS ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

extern bool
PHY_RFConfig8192S(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;




 priv->rf_chip = 132;




 switch(priv->rf_chip)
 {
 case 131:
 case 132:
  rtStatus = PHY_RF6052_Config(dev);
  break;

 case 130:

  break;

 case 129:
  break;

 case 128:

  break;
        default:
            break;
 }

 return (rtStatus == RT_STATUS_SUCCESS) ? 1:0;
}
