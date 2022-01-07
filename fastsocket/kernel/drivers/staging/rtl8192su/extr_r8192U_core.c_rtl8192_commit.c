
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ up; int ieee80211; int watch_dog_timer; } ;
struct net_device {int dummy; } ;


 int _rtl8192_up (struct net_device*) ;
 int del_timer_sync (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_softmac_stop_protocol (int ) ;
 int rtl8192_cancel_deferred_work (struct r8192_priv*) ;
 int rtl8192_rtx_disable (struct net_device*) ;

void rtl8192_commit(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int reset_status = 0;

 if (priv->up == 0) return ;
 priv->up = 0;

 rtl8192_cancel_deferred_work(priv);
 del_timer_sync(&priv->watch_dog_timer);


 ieee80211_softmac_stop_protocol(priv->ieee80211);


 rtl8192_rtx_disable(dev);
 reset_status = _rtl8192_up(dev);

}
