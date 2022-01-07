
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct r8180_priv {int rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct r8180_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static int r8180_wx_get_rts(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);



 wrqu->rts.value = priv->rts;
 wrqu->rts.fixed = 0;
 wrqu->rts.disabled = (wrqu->rts.value == 0);

 return 0;
}
