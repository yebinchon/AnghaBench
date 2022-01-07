
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int skip_table; TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_supported_band {scalar_t__ band; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int max_rate_tries; } ;
struct TYPE_3__ {int count; int idx; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_NO_CCK_RATE ;
 int rate_lowest_index (struct ieee80211_supported_band*,struct ieee80211_sta*) ;
 int rate_lowest_non_cck_index (struct ieee80211_supported_band*,struct ieee80211_sta*) ;

__attribute__((used)) static void __rate_control_send_low(struct ieee80211_hw *hw,
        struct ieee80211_supported_band *sband,
        struct ieee80211_sta *sta,
        struct ieee80211_tx_info *info)
{
 if ((sband->band != IEEE80211_BAND_2GHZ) ||
     !(info->flags & IEEE80211_TX_CTL_NO_CCK_RATE))
  info->control.rates[0].idx = rate_lowest_index(sband, sta);
 else
  info->control.rates[0].idx =
   rate_lowest_non_cck_index(sband, sta);

 info->control.rates[0].count =
  (info->flags & IEEE80211_TX_CTL_NO_ACK) ?
  1 : hw->max_rate_tries;

 info->control.skip_table = 1;
}
