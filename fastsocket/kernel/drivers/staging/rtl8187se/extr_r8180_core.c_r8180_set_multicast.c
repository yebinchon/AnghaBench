
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {short promisc; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int rtl8180_restart (struct net_device*) ;

__attribute__((used)) static void r8180_set_multicast(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 short promisc;

 promisc = (dev->flags & IFF_PROMISC) ? 1:0;

 if (promisc != priv->promisc)
  rtl8180_restart(dev);

 priv->promisc = promisc;
}
