
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int modulation; int mode; } ;


 int IEEE80211_CCK_MODULATION ;
 int IEEE80211_OFDM_MODULATION ;
 int IEEE_N_24G ;
 int IEEE_N_5G ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;

int ieee80211_wx_get_name(struct ieee80211_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 strcpy(wrqu->name, "802.11");
 if(ieee->modulation & IEEE80211_CCK_MODULATION)
  strcat(wrqu->name, "b");
 if(ieee->modulation & IEEE80211_OFDM_MODULATION)
  strcat(wrqu->name, "g");
 if (ieee->mode & (IEEE_N_24G | IEEE_N_5G))
  strcat(wrqu->name, "n");
 return 0;
}
