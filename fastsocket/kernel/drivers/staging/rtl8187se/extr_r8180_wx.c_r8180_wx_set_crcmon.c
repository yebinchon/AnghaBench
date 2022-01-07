
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {short crcmon; int wx_sem; scalar_t__ up; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;


 int DMESG (char*,char*) ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int rtl8180_down (struct net_device*) ;
 int rtl8180_up (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_crcmon(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 int *parms = (int *)extra;
 int enable = (parms[0] > 0);
 short prev = priv->crcmon;


 if(priv->ieee80211->bHwRadioOff)
  return 0;

 down(&priv->wx_sem);

 if(enable)
  priv->crcmon=1;
 else
  priv->crcmon=0;

 DMESG("bad CRC in monitor mode are %s",
       priv->crcmon ? "accepted" : "rejected");

 if(prev != priv->crcmon && priv->up){
  rtl8180_down(dev);
  rtl8180_up(dev);
 }

 up(&priv->wx_sem);

 return 0;
}
