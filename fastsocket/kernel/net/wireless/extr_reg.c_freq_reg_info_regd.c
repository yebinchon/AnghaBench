
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int n_reg_rules; struct ieee80211_reg_rule* reg_rules; } ;
struct ieee80211_freq_range {int dummy; } ;
struct ieee80211_reg_rule {struct ieee80211_freq_range freq_range; } ;


 int EINVAL ;
 int ERANGE ;
 struct ieee80211_reg_rule const* ERR_PTR (int ) ;
 int MHZ_TO_KHZ (int) ;
 int freq_in_rule_band (struct ieee80211_freq_range const*,int ) ;
 int reg_does_bw_fit (struct ieee80211_freq_range const*,int ,int ) ;

__attribute__((used)) static const struct ieee80211_reg_rule *
freq_reg_info_regd(struct wiphy *wiphy, u32 center_freq,
     const struct ieee80211_regdomain *regd)
{
 int i;
 bool band_rule_found = 0;
 bool bw_fits = 0;

 if (!regd)
  return ERR_PTR(-EINVAL);

 for (i = 0; i < regd->n_reg_rules; i++) {
  const struct ieee80211_reg_rule *rr;
  const struct ieee80211_freq_range *fr = ((void*)0);

  rr = &regd->reg_rules[i];
  fr = &rr->freq_range;






  if (!band_rule_found)
   band_rule_found = freq_in_rule_band(fr, center_freq);

  bw_fits = reg_does_bw_fit(fr, center_freq, MHZ_TO_KHZ(20));

  if (band_rule_found && bw_fits)
   return rr;
 }

 if (!band_rule_found)
  return ERR_PTR(-ERANGE);

 return ERR_PTR(-EINVAL);
}
