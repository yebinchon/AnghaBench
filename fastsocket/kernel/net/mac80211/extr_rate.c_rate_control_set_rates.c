
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta_rates {int dummy; } ;
struct ieee80211_sta {int rates; } ;
struct ieee80211_hw {int dummy; } ;


 int kfree_rcu (struct ieee80211_sta_rates*,int ) ;
 int rcu_assign_pointer (int ,struct ieee80211_sta_rates*) ;
 struct ieee80211_sta_rates* rcu_dereference_protected (int ,int) ;
 int rcu_head ;

int rate_control_set_rates(struct ieee80211_hw *hw,
      struct ieee80211_sta *pubsta,
      struct ieee80211_sta_rates *rates)
{
 struct ieee80211_sta_rates *old;







 old = rcu_dereference_protected(pubsta->rates, 1);
 rcu_assign_pointer(pubsta->rates, rates);
 if (old)
  kfree_rcu(old, rcu_head);

 return 0;
}
