
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_device {int* wpa_ie; size_t wpa_ie_len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MAX_WPA_IE_LEN ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int memcpy (int*,int*,size_t) ;
 int printk (char*,size_t,int) ;

int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
{
 u8 *buf;

 if (len>MAX_WPA_IE_LEN || (len && ie == ((void*)0)))
 {

 return -EINVAL;
 }


 if (len)
 {
  if (len != ie[1]+2)
  {
   printk("len: %Zd, ie:%d\n", len, ie[1]);
   return -EINVAL;
  }
  buf = kmalloc(len, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;
  memcpy(buf, ie, len);
  kfree(ieee->wpa_ie);
  ieee->wpa_ie = buf;
  ieee->wpa_ie_len = len;
 }
 else{
  if (ieee->wpa_ie)
  kfree(ieee->wpa_ie);
  ieee->wpa_ie = ((void*)0);
  ieee->wpa_ie_len = 0;
 }

 return 0;

}
