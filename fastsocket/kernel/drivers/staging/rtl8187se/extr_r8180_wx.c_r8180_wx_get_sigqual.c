
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct TYPE_3__ {int qual; } ;
struct TYPE_4__ {TYPE_1__ qual; } ;
struct r8180_priv {int wx_sem; TYPE_2__ wstats; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_get_sigqual(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);

 int ret = 0;



 down(&priv->wx_sem);

 *((int *)extra) = priv->wstats.qual.qual;



 up(&priv->wx_sem);

 return ret;
}
