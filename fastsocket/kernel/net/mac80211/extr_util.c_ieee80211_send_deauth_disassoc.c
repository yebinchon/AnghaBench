
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


struct TYPE_8__ {void* reason_code; } ;
struct TYPE_9__ {TYPE_1__ deauth; } ;
typedef struct ieee80211_mgmt {TYPE_2__ u; int bssid; int sa; int da; scalar_t__ seq_ctrl; scalar_t__ duration; void* frame_control; } const ieee80211_mgmt ;
typedef struct ieee80211_mgmt u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_13__ {TYPE_5__ mgd; } ;
struct TYPE_11__ {scalar_t__ type; struct ieee80211_mgmt const* addr; } ;
struct ieee80211_sub_if_data {TYPE_6__ u; TYPE_4__ vif; struct ieee80211_local* local; } ;
struct TYPE_10__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct TYPE_14__ {int flags; } ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_FTYPE_MGMT ;
 TYPE_7__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STA_MFP_ENABLED ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,struct ieee80211_mgmt const*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

void ieee80211_send_deauth_disassoc(struct ieee80211_sub_if_data *sdata,
        const u8 *bssid, u16 stype, u16 reason,
        bool send_frame, u8 *frame_buf)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt = (void *)frame_buf;


 mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT | stype);
 mgmt->duration = 0;
 mgmt->seq_ctrl = 0;
 memcpy(mgmt->da, bssid, ETH_ALEN);
 memcpy(mgmt->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(mgmt->bssid, bssid, ETH_ALEN);

 mgmt->u.deauth.reason_code = cpu_to_le16(reason);

 if (send_frame) {
  skb = dev_alloc_skb(local->hw.extra_tx_headroom +
        IEEE80211_DEAUTH_FRAME_LEN);
  if (!skb)
   return;

  skb_reserve(skb, local->hw.extra_tx_headroom);


  memcpy(skb_put(skb, IEEE80211_DEAUTH_FRAME_LEN),
         mgmt, IEEE80211_DEAUTH_FRAME_LEN);

  if (sdata->vif.type != NL80211_IFTYPE_STATION ||
      !(sdata->u.mgd.flags & IEEE80211_STA_MFP_ENABLED))
   IEEE80211_SKB_CB(skb)->flags |=
    IEEE80211_TX_INTFL_DONT_ENCRYPT;

  ieee80211_tx_skb(sdata, skb);
 }
}
