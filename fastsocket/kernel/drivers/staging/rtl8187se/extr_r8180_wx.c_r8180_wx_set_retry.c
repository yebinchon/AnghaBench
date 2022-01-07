
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_2__ retry; } ;
struct r8180_priv {scalar_t__ retry_rts; scalar_t__ retry_data; int wx_sem; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ bHwRadioOff; } ;


 int DMESG (char*,scalar_t__) ;
 int EINVAL ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_MAX ;
 scalar_t__ R8180_MAX_RETRY ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int rtl8180_commit (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_retry(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 int err = 0;

 if(priv->ieee80211->bHwRadioOff)
  return 0;

 down(&priv->wx_sem);

 if (wrqu->retry.flags & IW_RETRY_LIFETIME ||
     wrqu->retry.disabled){
  err = -EINVAL;
  goto exit;
 }
 if (!(wrqu->retry.flags & IW_RETRY_LIMIT)){
  err = -EINVAL;
  goto exit;
 }

 if(wrqu->retry.value > R8180_MAX_RETRY){
  err= -EINVAL;
  goto exit;
 }
 if (wrqu->retry.flags & IW_RETRY_MAX) {
  priv->retry_rts = wrqu->retry.value;
  DMESG("Setting retry for RTS/CTS data to %d", wrqu->retry.value);

 }else {
  priv->retry_data = wrqu->retry.value;
  DMESG("Setting retry for non RTS/CTS data to %d", wrqu->retry.value);
 }







  rtl8180_commit(dev);
exit:
 up(&priv->wx_sem);

 return err;
}
