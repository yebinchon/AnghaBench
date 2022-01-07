
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int wx_sem; int ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int ENETDOWN ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_get_scan (int ,struct iw_request_info*,union iwreq_data*,char*) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{

 int ret;
 struct r8192_priv *priv = ieee80211_priv(dev);

 if(!priv->up) return -ENETDOWN;

 down(&priv->wx_sem);

 ret = ieee80211_wx_get_scan(priv->ieee80211,a,wrqu,b);

 up(&priv->wx_sem);

 return ret;
}
