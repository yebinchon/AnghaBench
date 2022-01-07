
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int const* addr; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_2__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr_3addr {int addr3; int * addr2; int addr1; int frame_control; } ;


 size_t ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_PROBE_REQ ;
 int WLAN_EID_SSID ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int eth_broadcast_addr (int ) ;
 int memcpy (int *,int const*,size_t) ;
 int memset (struct ieee80211_hdr_3addr*,int ,int) ;
 int * skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *ieee80211_probereq_get(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           const u8 *ssid, size_t ssid_len,
           size_t tailroom)
{
 struct ieee80211_sub_if_data *sdata;
 struct ieee80211_local *local;
 struct ieee80211_hdr_3addr *hdr;
 struct sk_buff *skb;
 size_t ie_ssid_len;
 u8 *pos;

 sdata = vif_to_sdata(vif);
 local = sdata->local;
 ie_ssid_len = 2 + ssid_len;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + sizeof(*hdr) +
       ie_ssid_len + tailroom);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, local->hw.extra_tx_headroom);

 hdr = (struct ieee80211_hdr_3addr *) skb_put(skb, sizeof(*hdr));
 memset(hdr, 0, sizeof(*hdr));
 hdr->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
      IEEE80211_STYPE_PROBE_REQ);
 eth_broadcast_addr(hdr->addr1);
 memcpy(hdr->addr2, vif->addr, ETH_ALEN);
 eth_broadcast_addr(hdr->addr3);

 pos = skb_put(skb, ie_ssid_len);
 *pos++ = WLAN_EID_SSID;
 *pos++ = ssid_len;
 if (ssid_len)
  memcpy(pos, ssid, ssid_len);
 pos += ssid_len;

 return skb;
}
