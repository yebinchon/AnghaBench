
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_if_managed {int mtx; struct ieee80211_mgd_auth_data* auth_data; int bssid; scalar_t__ associated; scalar_t__ assoc_data; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_mgd_auth_data {size_t data_len; int key_len; TYPE_3__* bss; int done; int algorithm; int * key; int key_idx; int * data; void* sae_status; void* sae_trans; } ;
struct TYPE_6__ {int wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; int wep_tx_tfm; } ;
struct cfg80211_auth_request {int auth_type; int sae_data_len; int ie_len; int key_len; TYPE_3__* bss; scalar_t__ key; int key_idx; scalar_t__ ie; scalar_t__ sae_data; } ;
typedef int frame_buf ;
typedef int __le16 ;
struct TYPE_7__ {int bssid; } ;


 int BSS_CHANGED_BSSID ;
 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int IS_ERR (int ) ;





 int WLAN_AUTH_FT ;
 int WLAN_AUTH_LEAP ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SAE ;
 int WLAN_AUTH_SHARED_KEY ;
 int WLAN_REASON_UNSPECIFIED ;
 int __cfg80211_send_deauth (int ,int *,int) ;
 int cfg80211_ref_bss (int ,TYPE_3__*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_prep_connection (struct ieee80211_sub_if_data*,TYPE_3__*,int) ;
 int ieee80211_probe_auth (struct ieee80211_sub_if_data*) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int kfree (struct ieee80211_mgd_auth_data*) ;
 struct ieee80211_mgd_auth_data* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int ) ;

int ieee80211_mgd_auth(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_auth_request *req)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_mgd_auth_data *auth_data;
 u16 auth_alg;
 int err;



 switch (req->auth_type) {
 case 130:
  auth_alg = WLAN_AUTH_OPEN;
  break;
 case 128:
  if (IS_ERR(local->wep_tx_tfm))
   return -EOPNOTSUPP;
  auth_alg = WLAN_AUTH_SHARED_KEY;
  break;
 case 132:
  auth_alg = WLAN_AUTH_FT;
  break;
 case 131:
  auth_alg = WLAN_AUTH_LEAP;
  break;
 case 129:
  auth_alg = WLAN_AUTH_SAE;
  break;
 default:
  return -EOPNOTSUPP;
 }

 auth_data = kzalloc(sizeof(*auth_data) + req->sae_data_len +
       req->ie_len, GFP_KERNEL);
 if (!auth_data)
  return -ENOMEM;

 auth_data->bss = req->bss;

 if (req->sae_data_len >= 4) {
  __le16 *pos = (__le16 *) req->sae_data;
  auth_data->sae_trans = le16_to_cpu(pos[0]);
  auth_data->sae_status = le16_to_cpu(pos[1]);
  memcpy(auth_data->data, req->sae_data + 4,
         req->sae_data_len - 4);
  auth_data->data_len += req->sae_data_len - 4;
 }

 if (req->ie && req->ie_len) {
  memcpy(&auth_data->data[auth_data->data_len],
         req->ie, req->ie_len);
  auth_data->data_len += req->ie_len;
 }

 if (req->key && req->key_len) {
  auth_data->key_len = req->key_len;
  auth_data->key_idx = req->key_idx;
  memcpy(auth_data->key, req->key, req->key_len);
 }

 auth_data->algorithm = auth_alg;



 mutex_lock(&ifmgd->mtx);

 if ((ifmgd->auth_data && !ifmgd->auth_data->done) ||
     ifmgd->assoc_data) {
  err = -EBUSY;
  goto err_free;
 }

 if (ifmgd->auth_data)
  ieee80211_destroy_auth_data(sdata, 0);


 ifmgd->auth_data = auth_data;

 if (ifmgd->associated) {
  u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           WLAN_REASON_UNSPECIFIED,
           0, frame_buf);

  __cfg80211_send_deauth(sdata->dev, frame_buf,
           sizeof(frame_buf));
 }

 sdata_info(sdata, "authenticate with %pM\n", req->bss->bssid);

 err = ieee80211_prep_connection(sdata, req->bss, 0);
 if (err)
  goto err_clear;

 err = ieee80211_probe_auth(sdata);
 if (err) {
  sta_info_destroy_addr(sdata, req->bss->bssid);
  goto err_clear;
 }


 cfg80211_ref_bss(local->hw.wiphy, auth_data->bss);
 err = 0;
 goto out_unlock;

 err_clear:
 memset(ifmgd->bssid, 0, ETH_ALEN);
 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BSSID);
 ifmgd->auth_data = ((void*)0);
 err_free:
 kfree(auth_data);
 out_unlock:
 mutex_unlock(&ifmgd->mtx);

 return err;
}
