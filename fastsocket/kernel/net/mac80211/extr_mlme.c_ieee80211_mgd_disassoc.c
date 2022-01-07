
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int mtx; TYPE_2__* associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__ u; } ;
struct cfg80211_disassoc_request {int local_state_change; int reason_code; TYPE_2__* bss; } ;
struct TYPE_4__ {int bssid; } ;


 int ENOLINK ;
 int ETH_ALEN ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DISASSOC ;
 int __cfg80211_send_disassoc (int ,int *,int) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,int ) ;

int ieee80211_mgd_disassoc(struct ieee80211_sub_if_data *sdata,
      struct cfg80211_disassoc_request *req)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 bssid[ETH_ALEN];
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

 mutex_lock(&ifmgd->mtx);







 if (ifmgd->associated != req->bss) {
  mutex_unlock(&ifmgd->mtx);
  return -ENOLINK;
 }

 sdata_info(sdata,
     "disassociating from %pM by local choice (reason=%d)\n",
     req->bss->bssid, req->reason_code);

 memcpy(bssid, req->bss->bssid, ETH_ALEN);
 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DISASSOC,
          req->reason_code, !req->local_state_change,
          frame_buf);
 mutex_unlock(&ifmgd->mtx);

 __cfg80211_send_disassoc(sdata->dev, frame_buf,
     IEEE80211_DEAUTH_FRAME_LEN);

 return 0;
}
