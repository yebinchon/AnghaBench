
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int mtx; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__ u; } ;


 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int cfg80211_send_deauth (int ,int *,int) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ieee80211_sta_connection_lost(struct ieee80211_sub_if_data *sdata,
       u8 *bssid, u8 reason, bool tx)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH, reason,
          tx, frame_buf);
 mutex_unlock(&ifmgd->mtx);





 cfg80211_send_deauth(sdata->dev, frame_buf, IEEE80211_DEAUTH_FRAME_LEN);

 mutex_lock(&ifmgd->mtx);
}
