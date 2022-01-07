
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_9__ {scalar_t__ type; int addr; } ;
struct TYPE_7__ {int bssid; } ;
struct TYPE_8__ {TYPE_2__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; TYPE_3__ u; } ;
struct TYPE_6__ {int extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int addr4; int addr3; int addr2; int addr1; int frame_control; } ;
typedef int __le16 ;
struct TYPE_10__ {int flags; } ;


 int ETH_ALEN ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 TYPE_5__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STYPE_NULLFUNC ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_hdr*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static void ieee80211_send_4addr_nullfunc(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata)
{
 struct sk_buff *skb;
 struct ieee80211_hdr *nullfunc;
 __le16 fc;

 if (WARN_ON(sdata->vif.type != NL80211_IFTYPE_STATION))
  return;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + 30);
 if (!skb)
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);

 nullfunc = (struct ieee80211_hdr *) skb_put(skb, 30);
 memset(nullfunc, 0, 30);
 fc = cpu_to_le16(IEEE80211_FTYPE_DATA | IEEE80211_STYPE_NULLFUNC |
    IEEE80211_FCTL_FROMDS | IEEE80211_FCTL_TODS);
 nullfunc->frame_control = fc;
 memcpy(nullfunc->addr1, sdata->u.mgd.bssid, ETH_ALEN);
 memcpy(nullfunc->addr2, sdata->vif.addr, ETH_ALEN);
 memcpy(nullfunc->addr3, sdata->u.mgd.bssid, ETH_ALEN);
 memcpy(nullfunc->addr4, sdata->vif.addr, ETH_ALEN);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
 ieee80211_tx_skb(sdata, skb);
}
