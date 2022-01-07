
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int mtx; TYPE_2__* associated; scalar_t__ auth_data; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; int local; TYPE_1__ u; } ;
struct cfg80211_deauth_request {int reason_code; int bssid; int local_state_change; } ;
struct TYPE_4__ {int bssid; } ;


 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int __cfg80211_send_deauth (int ,int *,int) ;
 int drv_mgd_prepare_tx (int ,struct ieee80211_sub_if_data*) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_send_deauth_disassoc (struct ieee80211_sub_if_data*,int ,int ,int ,int,int *) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,int ) ;

int ieee80211_mgd_deauth(struct ieee80211_sub_if_data *sdata,
    struct cfg80211_deauth_request *req)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
 bool tx = !req->local_state_change;
 bool report_frame = 0;

 mutex_lock(&ifmgd->mtx);

 sdata_info(sdata,
     "deauthenticating from %pM by local choice (reason=%d)\n",
     req->bssid, req->reason_code);

 if (ifmgd->auth_data) {
  drv_mgd_prepare_tx(sdata->local, sdata);
  ieee80211_send_deauth_disassoc(sdata, req->bssid,
            IEEE80211_STYPE_DEAUTH,
            req->reason_code, tx,
            frame_buf);
  ieee80211_destroy_auth_data(sdata, 0);
  mutex_unlock(&ifmgd->mtx);

  report_frame = 1;
  goto out;
 }

 if (ifmgd->associated &&
     ether_addr_equal(ifmgd->associated->bssid, req->bssid)) {
  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           req->reason_code, tx, frame_buf);
  report_frame = 1;
 }
 mutex_unlock(&ifmgd->mtx);

 out:
 if (report_frame)
  __cfg80211_send_deauth(sdata->dev, frame_buf,
           IEEE80211_DEAUTH_FRAME_LEN);

 return 0;
}
