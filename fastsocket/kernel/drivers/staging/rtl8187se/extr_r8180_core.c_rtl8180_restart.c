
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int reset_wq; } ;
struct net_device {int dummy; } ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int schedule_work (int *) ;

void rtl8180_restart(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 schedule_work(&priv->reset_wq);
}
