
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int ack_tx_to_ieee; } ;
struct net_device {int dummy; } ;


 int CONFIG4 ;
 int CONFIG4_PWRMGT ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8180_rq_tx_ack(struct net_device *dev){

 struct r8180_priv *priv = ieee80211_priv(dev);

 write_nic_byte(dev,CONFIG4,read_nic_byte(dev,CONFIG4)|CONFIG4_PWRMGT);
 priv->ack_tx_to_ieee = 1;
}
