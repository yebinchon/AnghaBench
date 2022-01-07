
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ht_operation {int ht_param; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;





 int IEEE80211_HT_PARAM_CHA_SEC_OFFSET ;
 int NL80211_CHAN_HT20 ;
 int NL80211_CHAN_HT40MINUS ;
 int NL80211_CHAN_HT40PLUS ;
 int NL80211_CHAN_NO_HT ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,struct ieee80211_channel*,int) ;

void ieee80211_ht_oper_to_chandef(struct ieee80211_channel *control_chan,
      const struct ieee80211_ht_operation *ht_oper,
      struct cfg80211_chan_def *chandef)
{
 enum nl80211_channel_type channel_type;

 if (!ht_oper) {
  cfg80211_chandef_create(chandef, control_chan,
     NL80211_CHAN_NO_HT);
  return;
 }

 switch (ht_oper->ht_param & IEEE80211_HT_PARAM_CHA_SEC_OFFSET) {
 case 128:
  channel_type = NL80211_CHAN_HT20;
  break;
 case 130:
  channel_type = NL80211_CHAN_HT40PLUS;
  break;
 case 129:
  channel_type = NL80211_CHAN_HT40MINUS;
  break;
 default:
  channel_type = NL80211_CHAN_NO_HT;
 }

 cfg80211_chandef_create(chandef, control_chan, channel_type);
}
