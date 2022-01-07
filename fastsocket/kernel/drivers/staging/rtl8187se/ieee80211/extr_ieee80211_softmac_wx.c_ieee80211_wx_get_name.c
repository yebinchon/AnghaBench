
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int modulation; scalar_t__ state; } ;


 int IEEE80211_CCK_MODULATION ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE80211_LINKED_SCANNING ;
 scalar_t__ IEEE80211_NOLINK ;
 int IEEE80211_OFDM_MODULATION ;
 int IFNAMSIZ ;
 int strlcat (int ,char*,int ) ;
 int strlcpy (int ,char*,int ) ;

int ieee80211_wx_get_name(struct ieee80211_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 strlcpy(wrqu->name, "802.11", IFNAMSIZ);
 if(ieee->modulation & IEEE80211_CCK_MODULATION){
  strlcat(wrqu->name, "b", IFNAMSIZ);
  if(ieee->modulation & IEEE80211_OFDM_MODULATION)
   strlcat(wrqu->name, "/g", IFNAMSIZ);
 }else if(ieee->modulation & IEEE80211_OFDM_MODULATION)
  strlcat(wrqu->name, "g", IFNAMSIZ);

 if((ieee->state == IEEE80211_LINKED) ||
  (ieee->state == IEEE80211_LINKED_SCANNING))
  strlcat(wrqu->name,"  link", IFNAMSIZ);
 else if(ieee->state != IEEE80211_NOLINK)
  strlcat(wrqu->name," .....", IFNAMSIZ);


 return 0;
}
