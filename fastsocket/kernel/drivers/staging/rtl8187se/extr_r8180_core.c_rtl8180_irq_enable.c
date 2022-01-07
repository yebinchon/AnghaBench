
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int irq_enabled; int irq_mask; } ;
struct net_device {int dummy; } ;


 int INTA_MASK ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_word (struct net_device*,int ,int ) ;

void rtl8180_irq_enable(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 priv->irq_enabled = 1;
 write_nic_word(dev,INTA_MASK, priv->irq_mask);
}
