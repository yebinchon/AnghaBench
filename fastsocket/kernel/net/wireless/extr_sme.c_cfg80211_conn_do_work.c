
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int netdev; TYPE_2__* conn; int wiphy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_connect_params {int bssid; int ssid_len; int ssid; int channel; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int flags; int crypto; int mfp; int ie_len; int ie; int key_idx; int key_len; int key; int auth_type; } ;
struct cfg80211_assoc_request {int use_mfp; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int flags; int crypto; int ie_len; int ie; int prev_bssid; } ;
struct TYPE_4__ {int state; int prev_bssid; int prev_bssid_valid; struct cfg80211_connect_params params; } ;
struct TYPE_3__ {int assoc; int auth; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int BUG_ON (int) ;

 int CFG80211_CONN_ASSOCIATING ;

 int CFG80211_CONN_AUTHENTICATING ;


 int EINVAL ;
 int NL80211_MFP_NO ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_mlme_assoc (struct cfg80211_registered_device*,int ,int ,int ,int ,int ,struct cfg80211_assoc_request*) ;
 int __cfg80211_mlme_auth (struct cfg80211_registered_device*,int ,int ,int ,int ,int ,int ,int *,int ,int ,int ,int ,int *,int ) ;
 int __cfg80211_mlme_deauth (struct cfg80211_registered_device*,int ,int ,int *,int ,int ,int) ;
 int cfg80211_conn_scan (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_conn_do_work(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_connect_params *params;
 struct cfg80211_assoc_request req = {};
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->conn)
  return 0;

 params = &wdev->conn->params;

 switch (wdev->conn->state) {
 case 128:
  return cfg80211_conn_scan(wdev);
 case 130:
  BUG_ON(!rdev->ops->auth);
  wdev->conn->state = CFG80211_CONN_AUTHENTICATING;
  return __cfg80211_mlme_auth(rdev, wdev->netdev,
         params->channel, params->auth_type,
         params->bssid,
         params->ssid, params->ssid_len,
         ((void*)0), 0,
         params->key, params->key_len,
         params->key_idx, ((void*)0), 0);
 case 131:
  BUG_ON(!rdev->ops->assoc);
  wdev->conn->state = CFG80211_CONN_ASSOCIATING;
  if (wdev->conn->prev_bssid_valid)
   req.prev_bssid = wdev->conn->prev_bssid;
  req.ie = params->ie;
  req.ie_len = params->ie_len;
  req.use_mfp = params->mfp != NL80211_MFP_NO;
  req.crypto = params->crypto;
  req.flags = params->flags;
  req.ht_capa = params->ht_capa;
  req.ht_capa_mask = params->ht_capa_mask;
  req.vht_capa = params->vht_capa;
  req.vht_capa_mask = params->vht_capa_mask;

  err = __cfg80211_mlme_assoc(rdev, wdev->netdev, params->channel,
         params->bssid, params->ssid,
         params->ssid_len, &req);
  if (err)
   __cfg80211_mlme_deauth(rdev, wdev->netdev, params->bssid,
            ((void*)0), 0,
            WLAN_REASON_DEAUTH_LEAVING,
            0);
  return err;
 case 129:
  __cfg80211_mlme_deauth(rdev, wdev->netdev, params->bssid,
           ((void*)0), 0,
           WLAN_REASON_DEAUTH_LEAVING, 0);

  return -EINVAL;
 default:
  return 0;
 }
}
