
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct r8180_priv {int wx_sem; scalar_t__ up; TYPE_2__* ieee80211; } ;
struct net_device {int dev_addr; } ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {scalar_t__ iw_mode; TYPE_1__ current_network; } ;


 int ETH_ALEN ;
 scalar_t__ IW_MODE_MASTER ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int rtl8180_down (struct net_device*) ;
 int rtl8180_up (struct net_device*) ;
 int up (int *) ;

int r8180_set_mac_adr(struct net_device *dev, void *mac)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 struct sockaddr *addr = mac;

 down(&priv->wx_sem);

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 if(priv->ieee80211->iw_mode == IW_MODE_MASTER)
  memcpy(priv->ieee80211->current_network.bssid, dev->dev_addr, ETH_ALEN);

 if (priv->up) {
  rtl8180_down(dev);
  rtl8180_up(dev);
 }

 up(&priv->wx_sem);

 return 0;
}
