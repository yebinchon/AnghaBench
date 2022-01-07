
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_device {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* ieee80211_auth_resp (struct ieee80211_device*,int,int *) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;

void ieee80211_resp_to_auth(struct ieee80211_device *ieee, int s, u8* dest)
{
 struct sk_buff *buf = ieee80211_auth_resp(ieee, s, dest);

 if (buf){
  softmac_mgmt_xmit(buf, ieee);
  dev_kfree_skb_any(buf);
 }
}
