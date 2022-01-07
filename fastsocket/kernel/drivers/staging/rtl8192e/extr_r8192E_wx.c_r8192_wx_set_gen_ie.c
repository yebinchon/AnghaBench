
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct r8192_priv {int wx_sem; int ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_gen_ie (int ,char*,int ) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_gen_ie(struct net_device *dev,
                                        struct iw_request_info *info,
                                        union iwreq_data *data, char *extra)
{

 int ret=0;
        struct r8192_priv *priv = ieee80211_priv(dev);
        down(&priv->wx_sem);
        ret = ieee80211_wx_set_gen_ie(priv->ieee80211, extra, data->data.length);
        up(&priv->wx_sem);

        return ret;
}
