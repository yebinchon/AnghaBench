
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int wx_sem; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int beacon_interval; } ;
struct TYPE_4__ {TYPE_1__ current_network; scalar_t__ bHwRadioOff; } ;


 int DMESG (char*,int) ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int rtl8180_commit (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_beaconinterval(struct net_device *dev, struct iw_request_info *aa,
     union iwreq_data *wrqu, char *b)
{
 int *parms = (int *)b;
 int bi = parms[0];

 struct r8180_priv *priv = ieee80211_priv(dev);

 if(priv->ieee80211->bHwRadioOff)
  return 0;

 down(&priv->wx_sem);
 DMESG("setting beacon interval to %x",bi);

 priv->ieee80211->current_network.beacon_interval=bi;
 rtl8180_commit(dev);
 up(&priv->wx_sem);

 return 0;
}
