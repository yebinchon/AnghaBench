
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {int ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct iwreq {TYPE_1__ u; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;

 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_wpa_supplicant_ioctl (int ,int *) ;

int rtl8180_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct iwreq *wrq = (struct iwreq *) rq;
 int ret=-1;

 switch (cmd) {
 case 128:
  ret = ieee80211_wpa_supplicant_ioctl(priv->ieee80211, &wrq->u.data);
  return ret;
 default:
  return -EOPNOTSUPP;
 }

 return -EOPNOTSUPP;
}
