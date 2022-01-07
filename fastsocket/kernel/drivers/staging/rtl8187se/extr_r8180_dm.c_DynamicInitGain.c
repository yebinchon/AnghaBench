
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int rf_chip; } ;
struct net_device {int dummy; } ;


 int DIG_Zebra (struct net_device*) ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;

void
DynamicInitGain(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 switch(priv->rf_chip)
 {
  case 129:
  case 128:
   DIG_Zebra( dev );
   break;

  default:
   printk("DynamicInitGain(): unknown RFChipID(%d) !!!\n", priv->rf_chip);
   break;
 }
}
