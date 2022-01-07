
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_network {int bssid; } ;
struct ieee80211_device {int associate_seq; scalar_t__ open_wep; TYPE_1__* dev; } ;
struct TYPE_4__ {int duration_id; int addr3; int addr2; int addr1; int frame_ctl; } ;
struct ieee80211_authentication {void* status; void* transaction; int algorithm; TYPE_2__ header; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_FCTL_WEP ;
 int IEEE80211_STYPE_AUTH ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SHARED_KEY ;
 int WLAN_STATUS_SUCCESS ;
 void* cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

inline struct sk_buff *ieee80211_authentication_req(struct ieee80211_network *beacon,
 struct ieee80211_device *ieee, int challengelen)
{
 struct sk_buff *skb;
 struct ieee80211_authentication *auth;

 skb = dev_alloc_skb(sizeof(struct ieee80211_authentication) + challengelen);

 if (!skb) return ((void*)0);

 auth = (struct ieee80211_authentication *)
  skb_put(skb, sizeof(struct ieee80211_authentication));

 auth->header.frame_ctl = IEEE80211_STYPE_AUTH;
 if (challengelen) auth->header.frame_ctl |= IEEE80211_FCTL_WEP;

 auth->header.duration_id = 0x013a;

 memcpy(auth->header.addr1, beacon->bssid, ETH_ALEN);
 memcpy(auth->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(auth->header.addr3, beacon->bssid, ETH_ALEN);

 auth->algorithm = ieee->open_wep ? WLAN_AUTH_OPEN : WLAN_AUTH_SHARED_KEY;

 auth->transaction = cpu_to_le16(ieee->associate_seq);
 ieee->associate_seq++;

 auth->status = cpu_to_le16(WLAN_STATUS_SUCCESS);

 return skb;

}
