
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int reset_wq; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void tx_timeout(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 schedule_work(&priv->reset_wq);
 printk("TXTIMEOUT");
}
