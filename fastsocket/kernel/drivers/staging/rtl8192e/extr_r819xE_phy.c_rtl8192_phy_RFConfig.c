
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int COMP_ERR ;
 int PHY_RF8256_Config (struct net_device*) ;




 int RT_STATUS_SUCCESS ;
 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

RT_STATUS rtl8192_phy_RFConfig(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 switch(priv->rf_chip)
 {
  case 131:

   break;
  case 130:
   rtStatus = PHY_RF8256_Config(dev);
   break;

  case 129:
   break;
  case 128:

  break;

  default:
   RT_TRACE(COMP_ERR, "error chip id\n");
   break;
 }
 return rtStatus;
}
