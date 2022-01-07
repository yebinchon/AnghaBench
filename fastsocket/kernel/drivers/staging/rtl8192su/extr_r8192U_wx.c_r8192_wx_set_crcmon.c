
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {short crcmon; int wx_sem; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int DMESG (char*,char*) ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_crcmon(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int *parms = (int *)extra;
 int enable = (parms[0] > 0);
 short prev = priv->crcmon;

 down(&priv->wx_sem);

 if(enable)
  priv->crcmon=1;
 else
  priv->crcmon=0;

 DMESG("bad CRC in monitor mode are %s",
       priv->crcmon ? "accepted" : "rejected");

 if(prev != priv->crcmon && priv->up){


 }

 up(&priv->wx_sem);

 return 0;
}
