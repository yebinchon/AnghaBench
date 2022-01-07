
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int rf_type; } ;
struct net_device {int dummy; } ;


 int COMP_INIT ;




 int RT_TRACE (int ,char*,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

u8 FirmwareHeaderMapRfType(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 switch(priv->rf_type)
 {
  case 131: return 0x11;
  case 130: return 0x12;
  case 129: return 0x22;
  case 128: return 0x92;
  default:
   RT_TRACE(COMP_INIT, "Unknown RF type(%x)\n",priv->rf_type);
   break;
 }
 return 0x22;
}
