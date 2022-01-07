
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int wx_sem; int ieee80211; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_get_scan (int ,struct iw_request_info*,union iwreq_data*,char*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{

 int ret;
 struct r8180_priv *priv = ieee80211_priv(dev);

 down(&priv->wx_sem);
 if(priv->up)
  ret = ieee80211_wx_get_scan(priv->ieee80211,a,wrqu,b);
 else
  ret = -1;

 up(&priv->wx_sem);
 return ret;
}
