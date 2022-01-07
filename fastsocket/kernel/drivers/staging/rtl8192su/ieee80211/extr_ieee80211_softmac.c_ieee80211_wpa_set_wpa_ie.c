
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ len; int * data; } ;
struct TYPE_4__ {TYPE_1__ wpa_ie; } ;
struct ieee_param {TYPE_2__ u; } ;
struct ieee80211_device {scalar_t__ wpa_ie_len; int * wpa_ie; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_WPA_IE_LEN ;
 int ieee80211_wpa_assoc_frame (struct ieee80211_device*,int *,scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static int ieee80211_wpa_set_wpa_ie(struct ieee80211_device *ieee,
         struct ieee_param *param, int plen)
{
 u8 *buf;

 if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
     (param->u.wpa_ie.len && param->u.wpa_ie.data == ((void*)0)))
  return -EINVAL;

 if (param->u.wpa_ie.len) {
  buf = kmalloc(param->u.wpa_ie.len, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;

  memcpy(buf, param->u.wpa_ie.data, param->u.wpa_ie.len);
  kfree(ieee->wpa_ie);
  ieee->wpa_ie = buf;
  ieee->wpa_ie_len = param->u.wpa_ie.len;
 } else {
  kfree(ieee->wpa_ie);
  ieee->wpa_ie = ((void*)0);
  ieee->wpa_ie_len = 0;
 }

 ieee80211_wpa_assoc_frame(ieee, ieee->wpa_ie, ieee->wpa_ie_len);
 return 0;
}
