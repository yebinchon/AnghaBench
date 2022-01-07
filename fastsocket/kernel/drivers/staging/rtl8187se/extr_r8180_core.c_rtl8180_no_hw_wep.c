
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int card_8185; } ;
struct net_device {int dummy; } ;


 int SECURITY ;
 int SECURITY_WEP_RX_ENABLE_SHIFT ;
 int SECURITY_WEP_TX_ENABLE_SHIFT ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8180_no_hw_wep(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 if (!priv->card_8185) {
  u8 security;

  security = read_nic_byte(dev, SECURITY);
  security &=~(1<<SECURITY_WEP_TX_ENABLE_SHIFT);
  security &=~(1<<SECURITY_WEP_RX_ENABLE_SHIFT);

  write_nic_byte(dev, SECURITY, security);
 }
}
