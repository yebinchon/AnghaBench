
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {TYPE_2__* dev; struct ieee80211_local* local; } ;
struct TYPE_10__ {int smps_control; int action; } ;
struct TYPE_11__ {TYPE_3__ ht_smps; } ;
struct TYPE_12__ {TYPE_4__ u; int category; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int frame_control; int bssid; int sa; int da; } ;
struct TYPE_8__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
struct TYPE_14__ {int flags; } ;
struct TYPE_9__ {int const* dev_addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 TYPE_7__* IEEE80211_SKB_CB (struct sk_buff*) ;





 int IEEE80211_STYPE_ACTION ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int WARN_ON (int) ;
 int WLAN_CATEGORY_HT ;
 int WLAN_HT_ACTION_SMPS ;
 int WLAN_HT_SMPS_CONTROL_DISABLED ;
 int WLAN_HT_SMPS_CONTROL_DYNAMIC ;
 int WLAN_HT_SMPS_CONTROL_STATIC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

int ieee80211_send_smps_action(struct ieee80211_sub_if_data *sdata,
          enum ieee80211_smps_mode smps, const u8 *da,
          const u8 *bssid)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *action_frame;


 skb = dev_alloc_skb(27 + local->hw.extra_tx_headroom);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, local->hw.extra_tx_headroom);
 action_frame = (void *)skb_put(skb, 27);
 memcpy(action_frame->da, da, ETH_ALEN);
 memcpy(action_frame->sa, sdata->dev->dev_addr, ETH_ALEN);
 memcpy(action_frame->bssid, bssid, ETH_ALEN);
 action_frame->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_ACTION);
 action_frame->u.action.category = WLAN_CATEGORY_HT;
 action_frame->u.action.u.ht_smps.action = WLAN_HT_ACTION_SMPS;
 switch (smps) {
 case 132:
 case 130:
  WARN_ON(1);
 case 129:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_DISABLED;
  break;
 case 128:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_STATIC;
  break;
 case 131:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_DYNAMIC;
  break;
 }


 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS;
 ieee80211_tx_skb(sdata, skb);

 return 0;
}
