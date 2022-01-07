
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int wx_sem; int ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_mode (int ,struct iw_request_info*,union iwreq_data*,char*) ;
 int rtl8192_set_rxconf (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ret;
 down(&priv->wx_sem);

 ret = ieee80211_wx_set_mode(priv->ieee80211,a,wrqu,b);

 rtl8192_set_rxconf(dev);

 up(&priv->wx_sem);
 return ret;
}
