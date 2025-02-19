
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {char channel_plan; int wx_sem; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_get_channelplan(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);



 down(&priv->wx_sem);
 *extra = priv->channel_plan;



 up(&priv->wx_sem);

 return 0;
}
