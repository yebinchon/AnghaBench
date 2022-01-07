
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_priv {scalar_t__* cck_rates; } ;
struct ieee80211_tx_rate {scalar_t__ idx; int flags; int count; } ;


 int IEEE80211_TX_RC_MCS ;

__attribute__((used)) static bool
minstrel_ht_txstat_valid(struct minstrel_priv *mp, struct ieee80211_tx_rate *rate)
{
 if (rate->idx < 0)
  return 0;

 if (!rate->count)
  return 0;

 if (rate->flags & IEEE80211_TX_RC_MCS)
  return 1;

 return rate->idx == mp->cck_rates[0] ||
        rate->idx == mp->cck_rates[1] ||
        rate->idx == mp->cck_rates[2] ||
        rate->idx == mp->cck_rates[3];
}
