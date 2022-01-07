
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int wx_sem; } ;
struct net_device {int dummy; } ;


 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_down (struct net_device*) ;
 int up (int *) ;

int rtl8192_close(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ret;

 down(&priv->wx_sem);

 ret = rtl8192_down(dev);

 up(&priv->wx_sem);

 return ret;

}
