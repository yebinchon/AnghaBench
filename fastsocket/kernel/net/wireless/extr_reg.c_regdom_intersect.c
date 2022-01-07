
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {unsigned int n_reg_rules; char* alpha2; struct ieee80211_reg_rule* reg_rules; } ;
struct ieee80211_reg_rule {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct ieee80211_regdomain*) ;
 struct ieee80211_regdomain* kzalloc (int,int ) ;
 int reg_rules_intersect (struct ieee80211_reg_rule const*,struct ieee80211_reg_rule const*,struct ieee80211_reg_rule*) ;

__attribute__((used)) static struct ieee80211_regdomain *
regdom_intersect(const struct ieee80211_regdomain *rd1,
   const struct ieee80211_regdomain *rd2)
{
 int r, size_of_regd;
 unsigned int x, y;
 unsigned int num_rules = 0, rule_idx = 0;
 const struct ieee80211_reg_rule *rule1, *rule2;
 struct ieee80211_reg_rule *intersected_rule;
 struct ieee80211_regdomain *rd;

 struct ieee80211_reg_rule dummy_rule;

 if (!rd1 || !rd2)
  return ((void*)0);
 for (x = 0; x < rd1->n_reg_rules; x++) {
  rule1 = &rd1->reg_rules[x];
  for (y = 0; y < rd2->n_reg_rules; y++) {
   rule2 = &rd2->reg_rules[y];
   if (!reg_rules_intersect(rule1, rule2, &dummy_rule))
    num_rules++;
  }
 }

 if (!num_rules)
  return ((void*)0);

 size_of_regd = sizeof(struct ieee80211_regdomain) +
         num_rules * sizeof(struct ieee80211_reg_rule);

 rd = kzalloc(size_of_regd, GFP_KERNEL);
 if (!rd)
  return ((void*)0);

 for (x = 0; x < rd1->n_reg_rules && rule_idx < num_rules; x++) {
  rule1 = &rd1->reg_rules[x];
  for (y = 0; y < rd2->n_reg_rules && rule_idx < num_rules; y++) {
   rule2 = &rd2->reg_rules[y];





   intersected_rule = &rd->reg_rules[rule_idx];
   r = reg_rules_intersect(rule1, rule2, intersected_rule);




   if (r)
    continue;
   rule_idx++;
  }
 }

 if (rule_idx != num_rules) {
  kfree(rd);
  return ((void*)0);
 }

 rd->n_reg_rules = num_rules;
 rd->alpha2[0] = '9';
 rd->alpha2[1] = '8';

 return rd;
}
