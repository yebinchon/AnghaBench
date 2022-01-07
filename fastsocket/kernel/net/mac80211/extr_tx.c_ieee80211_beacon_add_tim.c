
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ps_data {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int tim_lock; scalar_t__ tim_in_locked_section; } ;


 int __ieee80211_beacon_add_tim (struct ieee80211_sub_if_data*,struct ps_data*,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ieee80211_beacon_add_tim(struct ieee80211_sub_if_data *sdata,
        struct ps_data *ps, struct sk_buff *skb)
{
 struct ieee80211_local *local = sdata->local;
 if (local->tim_in_locked_section) {
  __ieee80211_beacon_add_tim(sdata, ps, skb);
 } else {
  spin_lock_bh(&local->tim_lock);
  __ieee80211_beacon_add_tim(sdata, ps, skb);
  spin_unlock_bh(&local->tim_lock);
 }

 return 0;
}
