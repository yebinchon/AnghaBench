
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_device {struct ieee80211_network current_network; } ;


 struct sk_buff* ieee80211_disassociate_skb (struct ieee80211_network*,struct ieee80211_device*,int ) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;

void
SendDisassociation(
        struct ieee80211_device *ieee,
        u8* asSta,
        u8 asRsn
)
{
        struct ieee80211_network *beacon = &ieee->current_network;
        struct sk_buff *skb;
        skb = ieee80211_disassociate_skb(beacon,ieee,asRsn);
        if (skb){
                softmac_mgmt_xmit(skb, ieee);

        }
}
