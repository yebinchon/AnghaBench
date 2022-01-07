
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {unsigned int n_reg_rules; struct ieee80211_reg_rule* reg_rules; } ;
struct ieee80211_reg_rule {int dummy; } ;


 unsigned int NL80211_MAX_SUPP_REG_RULES ;
 scalar_t__ WARN_ON (int) ;
 int is_valid_reg_rule (struct ieee80211_reg_rule const*) ;

__attribute__((used)) static bool is_valid_rd(const struct ieee80211_regdomain *rd)
{
 const struct ieee80211_reg_rule *reg_rule = ((void*)0);
 unsigned int i;

 if (!rd->n_reg_rules)
  return 0;

 if (WARN_ON(rd->n_reg_rules > NL80211_MAX_SUPP_REG_RULES))
  return 0;

 for (i = 0; i < rd->n_reg_rules; i++) {
  reg_rule = &rd->reg_rules[i];
  if (!is_valid_reg_rule(reg_rule))
   return 0;
 }

 return 1;
}
