
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ up; int ieee80211; } ;
struct net_device {int dummy; } ;


 int _rtl8192_up (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_softmac_stop_protocol (int ) ;
 int rtl8192_irq_disable (struct net_device*) ;
 int rtl8192_rtx_disable (struct net_device*) ;

void rtl8192_commit(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->up == 0) return ;


 ieee80211_softmac_stop_protocol(priv->ieee80211);

 rtl8192_irq_disable(dev);
 rtl8192_rtx_disable(dev);
 _rtl8192_up(dev);
}
