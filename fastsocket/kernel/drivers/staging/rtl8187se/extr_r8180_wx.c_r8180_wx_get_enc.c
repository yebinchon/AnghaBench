
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_get_encode (int ,struct iw_request_info*,union iwreq_data*,char*) ;

__attribute__((used)) static int r8180_wx_get_enc(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *key)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 return ieee80211_wx_get_encode(priv->ieee80211, info, wrqu, key);
}
