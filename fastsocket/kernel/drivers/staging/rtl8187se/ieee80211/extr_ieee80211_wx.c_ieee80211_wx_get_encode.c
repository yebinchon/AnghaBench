
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int flags; int length; } ;
union iwreq_data {struct iw_point encoding; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {scalar_t__ iw_mode; int tx_keyidx; scalar_t__ open_wep; struct ieee80211_crypt_data** crypt; } ;
struct ieee80211_crypt_data {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_key ) (char*,int ,int *,int ) ;int name; } ;


 int EINVAL ;
 int IEEE80211_DEBUG_WX (char*) ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ IW_MODE_MONITOR ;
 int WEP_KEYS ;
 int WEP_KEY_LEN ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (char*,int ,int *,int ) ;

int ieee80211_wx_get_encode(struct ieee80211_device *ieee,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *keybuf)
{
 struct iw_point *erq = &(wrqu->encoding);
 int len, key;
 struct ieee80211_crypt_data *crypt;

 IEEE80211_DEBUG_WX("GET_ENCODE\n");

 if(ieee->iw_mode == IW_MODE_MONITOR)
  return -1;

 key = erq->flags & IW_ENCODE_INDEX;
 if (key) {
  if (key > WEP_KEYS)
   return -EINVAL;
  key--;
 } else
  key = ieee->tx_keyidx;

 crypt = ieee->crypt[key];
 erq->flags = key + 1;

 if (crypt == ((void*)0) || crypt->ops == ((void*)0)) {
  erq->length = 0;
  erq->flags |= IW_ENCODE_DISABLED;
  return 0;
 }

 if (strcmp(crypt->ops->name, "WEP") != 0) {


  erq->length = 0;
  erq->flags |= IW_ENCODE_ENABLED;
  return 0;
 }

 len = crypt->ops->get_key(keybuf, WEP_KEY_LEN, ((void*)0), crypt->priv);
 erq->length = (len >= 0 ? len : 0);

 erq->flags |= IW_ENCODE_ENABLED;

 if (ieee->open_wep)
  erq->flags |= IW_ENCODE_OPEN;
 else
  erq->flags |= IW_ENCODE_RESTRICTED;

 return 0;
}
