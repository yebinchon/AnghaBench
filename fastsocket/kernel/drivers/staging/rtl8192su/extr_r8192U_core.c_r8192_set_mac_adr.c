
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct r8192_priv {int wx_sem; int reset_wq; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int schedule_work (int *) ;
 int up (int *) ;

int r8192_set_mac_adr(struct net_device *dev, void *mac)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct sockaddr *addr = mac;

 down(&priv->wx_sem);

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 schedule_work(&priv->reset_wq);

 up(&priv->wx_sem);

 return 0;
}
