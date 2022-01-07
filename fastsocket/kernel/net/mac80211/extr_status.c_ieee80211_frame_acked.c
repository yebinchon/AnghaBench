
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sta_info {struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int recalc_smps; int smps_mode; TYPE_1__ vif; } ;
struct TYPE_7__ {scalar_t__ action; int smps_control; } ;
struct TYPE_8__ {TYPE_2__ ht_smps; } ;
struct TYPE_9__ {scalar_t__ category; TYPE_3__ u; } ;
struct TYPE_10__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {TYPE_5__ u; int frame_control; } ;
struct ieee80211_local {int hw; } ;
struct ieee80211_hdr {int addr1; } ;


 int IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_SMPS_STATIC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WLAN_CATEGORY_HT ;
 scalar_t__ WLAN_HT_ACTION_SMPS ;



 int ieee80211_check_pending_bar (struct sta_info*,int ,int) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_queue_work (int *,int *) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static void ieee80211_frame_acked(struct sta_info *sta, struct sk_buff *skb)
{
 struct ieee80211_mgmt *mgmt = (void *) skb->data;
 struct ieee80211_local *local = sta->local;
 struct ieee80211_sub_if_data *sdata = sta->sdata;

 if (ieee80211_is_data_qos(mgmt->frame_control)) {
  struct ieee80211_hdr *hdr = (void *) skb->data;
  u8 *qc = ieee80211_get_qos_ctl(hdr);
  u16 tid = qc[0] & 0xf;

  ieee80211_check_pending_bar(sta, hdr->addr1, tid);
 }

 if (ieee80211_is_action(mgmt->frame_control) &&
     mgmt->u.action.category == WLAN_CATEGORY_HT &&
     mgmt->u.action.u.ht_smps.action == WLAN_HT_ACTION_SMPS &&
     sdata->vif.type == NL80211_IFTYPE_STATION &&
     ieee80211_sdata_running(sdata)) {







  switch (mgmt->u.action.u.ht_smps.smps_control) {
  case 129:
   sdata->smps_mode = IEEE80211_SMPS_DYNAMIC;
   break;
  case 128:
   sdata->smps_mode = IEEE80211_SMPS_STATIC;
   break;
  case 130:
  default:
   sdata->smps_mode = IEEE80211_SMPS_OFF;
   break;
  }

  ieee80211_queue_work(&local->hw, &sdata->recalc_smps);
 }
}
