
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ieee80211_freq_range {scalar_t__ start_freq_khz; scalar_t__ end_freq_khz; scalar_t__ max_bandwidth_khz; } ;
struct ieee80211_reg_rule {struct ieee80211_freq_range freq_range; } ;



__attribute__((used)) static bool is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
{
 const struct ieee80211_freq_range *freq_range = &rule->freq_range;
 u32 freq_diff;

 if (freq_range->start_freq_khz <= 0 || freq_range->end_freq_khz <= 0)
  return 0;

 if (freq_range->start_freq_khz > freq_range->end_freq_khz)
  return 0;

 freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;

 if (freq_range->end_freq_khz <= freq_range->start_freq_khz ||
     freq_range->max_bandwidth_khz > freq_diff)
  return 0;

 return 1;
}
