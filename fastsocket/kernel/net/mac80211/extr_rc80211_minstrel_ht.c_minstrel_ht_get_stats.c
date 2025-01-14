
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_rate_stats {int dummy; } ;
struct minstrel_priv {int* cck_rates; } ;
struct minstrel_ht_sta {TYPE_1__* groups; } ;
struct ieee80211_tx_rate {int flags; int idx; } ;
struct TYPE_2__ {int supported; struct minstrel_rate_stats* rates; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int) ;
 int IEEE80211_TX_RC_MCS ;
 int MCS_GROUP_RATES ;
 int MINSTREL_CCK_GROUP ;
 int minstrel_ht_get_group_idx (struct ieee80211_tx_rate*) ;

__attribute__((used)) static struct minstrel_rate_stats *
minstrel_ht_get_stats(struct minstrel_priv *mp, struct minstrel_ht_sta *mi,
        struct ieee80211_tx_rate *rate)
{
 int group, idx;

 if (rate->flags & IEEE80211_TX_RC_MCS) {
  group = minstrel_ht_get_group_idx(rate);
  idx = rate->idx % MCS_GROUP_RATES;
 } else {
  group = MINSTREL_CCK_GROUP;

  for (idx = 0; idx < ARRAY_SIZE(mp->cck_rates); idx++)
   if (rate->idx == mp->cck_rates[idx])
    break;


  if (!(mi->groups[group].supported & BIT(idx)))
   idx += 4;
 }
 return &mi->groups[group].rates[idx];
}
