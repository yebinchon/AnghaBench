
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct r8192_priv {scalar_t__ (* rf_set_sens ) (struct net_device*,int ) ;int wx_sem; int sens; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 short EINVAL ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*,int ) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_sens(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{

 struct r8192_priv *priv = ieee80211_priv(dev);

 short err = 0;
 down(&priv->wx_sem);

 if(priv->rf_set_sens == ((void*)0)) {
  err= -1;
  goto exit;
 }
 if(priv->rf_set_sens(dev, wrqu->sens.value) == 0)
  priv->sens = wrqu->sens.value;
 else
  err= -EINVAL;

exit:
 up(&priv->wx_sem);

 return err;
}
