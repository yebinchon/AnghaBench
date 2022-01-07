
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int up; } ;
struct net_device {int dummy; } ;


 int _rtl8180_up (struct net_device*) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;

int rtl8180_up(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 if (priv->up == 1) return -1;

 return _rtl8180_up(dev);
}
