
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct r8180_priv {int wx_sem; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ bHwRadioOff; } ;


 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_gen_ie (TYPE_2__*,char*,int ) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_gen_ie(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{

 int ret=0;
        struct r8180_priv *priv = ieee80211_priv(dev);


 if(priv->ieee80211->bHwRadioOff)
  return 0;

        down(&priv->wx_sem);

        ret = ieee80211_wx_set_gen_ie(priv->ieee80211, extra, wrqu->data.length);

        up(&priv->wx_sem);

        return ret;


}
