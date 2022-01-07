
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int wx_sem; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int modulation; } ;


 int IEEE80211_CCK_MODULATION ;
 int IEEE80211_OFDM_MODULATION ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_get_iwmode(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee;
 int ret = 0;



 down(&priv->wx_sem);

 ieee = priv->ieee80211;

 strcpy(extra, "802.11");
 if(ieee->modulation & IEEE80211_CCK_MODULATION) {
  strcat(extra, "b");
  if(ieee->modulation & IEEE80211_OFDM_MODULATION)
   strcat(extra, "/g");
 } else if(ieee->modulation & IEEE80211_OFDM_MODULATION)
  strcat(extra, "g");

 up(&priv->wx_sem);

 return ret;
}
