
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int alpha2; } ;


 int alpha2_equal (int ,char const*) ;
 struct ieee80211_regdomain* get_cfg80211_regdom () ;

__attribute__((used)) static bool regdom_changes(const char *alpha2)
{
 const struct ieee80211_regdomain *r = get_cfg80211_regdom();

 if (!r)
  return 1;
 return !alpha2_equal(r->alpha2, alpha2);
}
