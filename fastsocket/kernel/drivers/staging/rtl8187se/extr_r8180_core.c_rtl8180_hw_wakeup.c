
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int ps_lock; int (* rf_wakeup ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;


 int CONFIG4 ;
 int CONFIG4_PWRMGT ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8180_hw_wakeup(struct net_device *dev)
{
 unsigned long flags;
 struct r8180_priv *priv = ieee80211_priv(dev);

 spin_lock_irqsave(&priv->ps_lock,flags);
 write_nic_byte(dev,CONFIG4,read_nic_byte(dev,CONFIG4)&~CONFIG4_PWRMGT);
 if (priv->rf_wakeup)
  priv->rf_wakeup(dev);
 spin_unlock_irqrestore(&priv->ps_lock,flags);
}
