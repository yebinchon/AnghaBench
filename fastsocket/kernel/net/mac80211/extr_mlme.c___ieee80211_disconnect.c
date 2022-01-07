
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int mtx; int flags; int associated; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__* local; TYPE_2__ u; } ;
struct TYPE_3__ {int hw; } ;


 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_MAX_QUEUE_MAP ;
 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int IEEE80211_STA_CSA_RECEIVED ;
 int IEEE80211_STYPE_DEAUTH ;
 int WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ;
 int cfg80211_send_deauth (int ,int *,int) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_wake_queues_by_reason (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __ieee80211_disconnect(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

 mutex_lock(&ifmgd->mtx);
 if (!ifmgd->associated) {
  mutex_unlock(&ifmgd->mtx);
  return;
 }

 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
          WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY,
          1, frame_buf);
 ifmgd->flags &= ~IEEE80211_STA_CSA_RECEIVED;
 ieee80211_wake_queues_by_reason(&sdata->local->hw,
     IEEE80211_MAX_QUEUE_MAP,
     IEEE80211_QUEUE_STOP_REASON_CSA);
 mutex_unlock(&ifmgd->mtx);





 cfg80211_send_deauth(sdata->dev, frame_buf, IEEE80211_DEAUTH_FRAME_LEN);
}
