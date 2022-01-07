
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_freq_range {int max_bandwidth_khz; } ;
struct ieee80211_power_rule {int max_eirp; int max_antenna_gain; } ;
struct ieee80211_reg_rule {int flags; struct ieee80211_freq_range freq_range; struct ieee80211_power_rule power_rule; } ;
struct ieee80211_channel {int center_freq; int flags; int max_antenna_gain; int max_reg_power; int max_power; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40 ;
 scalar_t__ IS_ERR (struct ieee80211_reg_rule const*) ;
 scalar_t__ MBI_TO_DBI (int ) ;
 scalar_t__ MBM_TO_DBM (int ) ;
 int MHZ_TO_KHZ (int) ;
 int REG_DBG_PRINT (char*,int) ;
 int chan_reg_rule_print_dbg (struct ieee80211_channel*,struct ieee80211_reg_rule const*) ;
 struct ieee80211_reg_rule* freq_reg_info_regd (struct wiphy*,int ,struct ieee80211_regdomain const*) ;
 int map_regdom_flags (int ) ;

__attribute__((used)) static void handle_channel_custom(struct wiphy *wiphy,
      struct ieee80211_channel *chan,
      const struct ieee80211_regdomain *regd)
{
 u32 bw_flags = 0;
 const struct ieee80211_reg_rule *reg_rule = ((void*)0);
 const struct ieee80211_power_rule *power_rule = ((void*)0);
 const struct ieee80211_freq_range *freq_range = ((void*)0);

 reg_rule = freq_reg_info_regd(wiphy, MHZ_TO_KHZ(chan->center_freq),
          regd);

 if (IS_ERR(reg_rule)) {
  REG_DBG_PRINT("Disabling freq %d MHz as custom regd has no rule that fits it\n",
         chan->center_freq);
  chan->flags = IEEE80211_CHAN_DISABLED;
  return;
 }

 chan_reg_rule_print_dbg(chan, reg_rule);

 power_rule = &reg_rule->power_rule;
 freq_range = &reg_rule->freq_range;

 if (freq_range->max_bandwidth_khz < MHZ_TO_KHZ(40))
  bw_flags = IEEE80211_CHAN_NO_HT40;
 if (freq_range->max_bandwidth_khz < MHZ_TO_KHZ(80))
  bw_flags |= IEEE80211_CHAN_NO_80MHZ;
 if (freq_range->max_bandwidth_khz < MHZ_TO_KHZ(160))
  bw_flags |= IEEE80211_CHAN_NO_160MHZ;

 chan->flags |= map_regdom_flags(reg_rule->flags) | bw_flags;
 chan->max_antenna_gain = (int) MBI_TO_DBI(power_rule->max_antenna_gain);
 chan->max_reg_power = chan->max_power =
  (int) MBM_TO_DBM(power_rule->max_eirp);
}
