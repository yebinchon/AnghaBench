
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_tdls_lnkie {int ie_len; int resp_sta; int init_sta; int bssid; int ie_type; } ;


 int ETH_ALEN ;
 int WLAN_EID_LINK_ID ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_link_ie(struct sk_buff *skb, u8 *src_addr,
           u8 *peer, u8 *bssid)
{
 struct ieee80211_tdls_lnkie *lnkid;

 lnkid = (void *)skb_put(skb, sizeof(struct ieee80211_tdls_lnkie));

 lnkid->ie_type = WLAN_EID_LINK_ID;
 lnkid->ie_len = sizeof(struct ieee80211_tdls_lnkie) - 2;

 memcpy(lnkid->bssid, bssid, ETH_ALEN);
 memcpy(lnkid->init_sta, src_addr, ETH_ALEN);
 memcpy(lnkid->resp_sta, peer, ETH_ALEN);
}
