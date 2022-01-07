
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int rf_chip; } ;
struct net_device {int dummy; } ;



 int RFPinsEnable ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_word (struct net_device*,int ,int) ;

void
SetOutputEnableOfRfPins(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 switch(priv->rf_chip)
 {
 case 130:
 case 129:
 case 128:
  write_nic_word(dev, RFPinsEnable, 0x1bff);

  break;
 }
}
