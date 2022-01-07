
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct key_params {int cipher; int seq; int seq_len; int key; int key_len; } ;
struct TYPE_8__ {int security; } ;
struct TYPE_7__ {int mfp; } ;
struct TYPE_9__ {TYPE_2__ mesh; TYPE_1__ mgd; } ;
struct TYPE_12__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_3__ u; TYPE_6__ vif; } ;
struct TYPE_10__ {int flags; } ;
struct ieee80211_key {TYPE_4__ conf; struct sta_info* sta; } ;
struct TYPE_11__ {int sta_mtx; struct ieee80211_key* wep_tx_tfm; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENOENT ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 int IEEE80211_MESH_SEC_NONE ;
 int IEEE80211_MFP_DISABLED ;
 scalar_t__ IS_ERR (struct ieee80211_key*) ;
 int PTR_ERR (struct ieee80211_key*) ;
 int WARN_ON_ONCE (int) ;



 int WLAN_STA_ASSOC ;
 int WLAN_STA_MFP ;
 struct ieee80211_key* ieee80211_key_alloc (int,int ,int ,int ,int ,int ) ;
 int ieee80211_key_free_unused (struct ieee80211_key*) ;
 int ieee80211_key_link (struct ieee80211_key*,struct ieee80211_sub_if_data*,struct sta_info*) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_6__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int const*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int ieee80211_add_key(struct wiphy *wiphy, struct net_device *dev,
        u8 key_idx, bool pairwise, const u8 *mac_addr,
        struct key_params *params)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct sta_info *sta = ((void*)0);
 struct ieee80211_key *key;
 int err;

 if (!ieee80211_sdata_running(sdata))
  return -ENETDOWN;


 switch (params->cipher) {
 case 128:
 case 130:
 case 129:
  if (IS_ERR(sdata->local->wep_tx_tfm))
   return -EINVAL;
  break;
 default:
  break;
 }

 key = ieee80211_key_alloc(params->cipher, key_idx, params->key_len,
      params->key, params->seq_len, params->seq);
 if (IS_ERR(key))
  return PTR_ERR(key);

 if (pairwise)
  key->conf.flags |= IEEE80211_KEY_FLAG_PAIRWISE;

 mutex_lock(&sdata->local->sta_mtx);

 if (mac_addr) {
  if (ieee80211_vif_is_mesh(&sdata->vif))
   sta = sta_info_get(sdata, mac_addr);
  else
   sta = sta_info_get_bss(sdata, mac_addr);
  if (!sta || !test_sta_flag(sta, WLAN_STA_ASSOC)) {
   ieee80211_key_free_unused(key);
   err = -ENOENT;
   goto out_unlock;
  }
 }

 switch (sdata->vif.type) {
 case 134:
  if (sdata->u.mgd.mfp != IEEE80211_MFP_DISABLED)
   key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
  break;
 case 141:
 case 140:

  if (key->sta && test_sta_flag(key->sta, WLAN_STA_MFP))
   key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
  break;
 case 142:

  break;
 case 139:





 case 132:
 case 138:
 case 136:
 case 133:
 case 131:
 case 137:
 case 135:

  WARN_ON_ONCE(1);
  break;
 }

 err = ieee80211_key_link(key, sdata, sta);

 out_unlock:
 mutex_unlock(&sdata->local->sta_mtx);

 return err;
}
