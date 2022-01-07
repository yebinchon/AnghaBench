
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {size_t priority; } ;
struct ieee80211_sub_if_data {int wmm_acm; } ;


 int BIT (size_t) ;
 int * ieee802_1d_to_ac ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wme_downgrade_ac (struct sk_buff*) ;

__attribute__((used)) static u16 ieee80211_downgrade_queue(struct ieee80211_sub_if_data *sdata,
         struct sk_buff *skb)
{

 while (unlikely(sdata->wmm_acm & BIT(skb->priority))) {
  if (wme_downgrade_ac(skb)) {






   break;
  }
 }


 return ieee802_1d_to_ac[skb->priority];
}
