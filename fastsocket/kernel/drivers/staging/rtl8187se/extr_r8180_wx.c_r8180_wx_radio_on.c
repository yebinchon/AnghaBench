
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int wx_sem; int (* rf_wakeup ) (struct net_device*) ;TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;


 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_radio_on(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv =ieee80211_priv(dev);

 if(priv->ieee80211->bHwRadioOff)
  return 0;


 down(&priv->wx_sem);
 priv->rf_wakeup(dev);

 up(&priv->wx_sem);

 return 0;

}
