
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int ps_lock; int (* rf_sleep ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;

void rtl8180_hw_sleep_down(struct net_device *dev)
{
        unsigned long flags;
        struct r8180_priv *priv = ieee80211_priv(dev);

        spin_lock_irqsave(&priv->ps_lock,flags);
        if(priv->rf_sleep)
                priv->rf_sleep(dev);
        spin_unlock_irqrestore(&priv->ps_lock,flags);
}
