
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int wx_sem; TYPE_1__* ieee80211; scalar_t__ hw_wep; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;


 int DMESG (char*) ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_encode (TYPE_1__*,struct iw_request_info*,union iwreq_data*,char*) ;
 int r8180_wx_set_key (struct net_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_enc(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *key)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 int ret;

 if(priv->ieee80211->bHwRadioOff)
  return 0;


 down(&priv->wx_sem);

 if(priv->hw_wep) ret = r8180_wx_set_key(dev,info,wrqu,key);
 else{
  DMESG("Setting SW wep key");
  ret = ieee80211_wx_set_encode(priv->ieee80211,info,wrqu,key);
 }

 up(&priv->wx_sem);
 return ret;
}
