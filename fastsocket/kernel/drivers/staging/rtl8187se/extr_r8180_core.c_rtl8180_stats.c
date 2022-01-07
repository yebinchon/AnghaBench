
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {TYPE_1__* ieee80211; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *rtl8180_stats(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 return &priv->ieee80211->stats;
}
