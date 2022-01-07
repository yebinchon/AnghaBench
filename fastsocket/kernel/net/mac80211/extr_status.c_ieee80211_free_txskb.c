
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_report_used_skb (struct ieee80211_local*,struct sk_buff*,int) ;

void ieee80211_free_txskb(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct ieee80211_local *local = hw_to_local(hw);

 ieee80211_report_used_skb(local, skb, 1);
 dev_kfree_skb_any(skb);
}
