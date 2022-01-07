
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {scalar_t__ regd; } ;
struct regulatory_request {scalar_t__ initiator; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_reg_rule {int dummy; } ;


 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 struct ieee80211_reg_rule const* freq_reg_info_regd (struct wiphy*,int ,struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain* get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 struct ieee80211_regdomain* get_wiphy_regdom (struct wiphy*) ;

const struct ieee80211_reg_rule *freq_reg_info(struct wiphy *wiphy,
            u32 center_freq)
{
 const struct ieee80211_regdomain *regd;
 struct regulatory_request *lr = get_last_request();





 if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
     lr->initiator != NL80211_REGDOM_SET_BY_USER &&
     wiphy->regd)
  regd = get_wiphy_regdom(wiphy);
 else
  regd = get_cfg80211_regdom();

 return freq_reg_info_regd(wiphy, center_freq, regd);
}
