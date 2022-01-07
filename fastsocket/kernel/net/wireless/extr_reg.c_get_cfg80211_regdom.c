
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 int cfg80211_regdomain ;
 int lockdep_is_held (int *) ;
 struct ieee80211_regdomain const* rcu_dereference_protected (int ,int ) ;
 int reg_mutex ;

__attribute__((used)) static const struct ieee80211_regdomain *get_cfg80211_regdom(void)
{
 return rcu_dereference_protected(cfg80211_regdomain,
      lockdep_is_held(&reg_mutex));
}
