
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {scalar_t__ mode; } ;
struct r8180_priv {int wx_sem; TYPE_1__* ieee80211; scalar_t__ bInactivePs; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;


 int IPSLeave (struct net_device*) ;
 scalar_t__ IW_MODE_ADHOC ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_mode (TYPE_1__*,struct iw_request_info*,union iwreq_data*,char*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 int ret;


 if(priv->ieee80211->bHwRadioOff)
  return 0;

 down(&priv->wx_sem);

 if(priv->bInactivePs){
  if(wrqu->mode == IW_MODE_ADHOC)
   IPSLeave(dev);
 }
 ret = ieee80211_wx_set_mode(priv->ieee80211,a,wrqu,b);



 up(&priv->wx_sem);
 return ret;
}
