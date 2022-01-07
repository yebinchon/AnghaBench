
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct ieee80211_regdomain {int dummy; } ;


 int lockdep_is_held (int *) ;
 struct ieee80211_regdomain const* rcu_dereference_protected (int ,int ) ;
 int reg_mutex ;

__attribute__((used)) static const struct ieee80211_regdomain *get_wiphy_regdom(struct wiphy *wiphy)
{
 return rcu_dereference_protected(wiphy->regd,
      lockdep_is_held(&reg_mutex));
}
