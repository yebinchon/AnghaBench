
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int irq_enabled; int IntrMask; } ;
struct net_device {int dummy; } ;


 int IMR ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void rtl8185b_irq_enable(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 priv->irq_enabled = 1;
 write_nic_dword(dev, IMR, priv->IntrMask);
}
