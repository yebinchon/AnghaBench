
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct minstrel_sta_info {int sta; int lowest_rix; int max_prob_rate; int * max_tp_rate; } ;
struct minstrel_priv {TYPE_2__* hw; int max_retry; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct TYPE_4__ {int max_rates; } ;
struct TYPE_3__ {int count_rts; int count_cts; int count; int idx; } ;


 int GFP_ATOMIC ;
 struct ieee80211_sta_rates* kzalloc (int,int ) ;
 int minstrel_set_rate (struct minstrel_sta_info*,struct ieee80211_sta_rates*,int ,int ) ;
 int rate_control_set_rates (TYPE_2__*,int ,struct ieee80211_sta_rates*) ;

__attribute__((used)) static void
minstrel_update_rates(struct minstrel_priv *mp, struct minstrel_sta_info *mi)
{
 struct ieee80211_sta_rates *ratetbl;
 int i = 0;

 ratetbl = kzalloc(sizeof(*ratetbl), GFP_ATOMIC);
 if (!ratetbl)
  return;


 minstrel_set_rate(mi, ratetbl, i++, mi->max_tp_rate[0]);

 if (mp->hw->max_rates >= 3) {

  minstrel_set_rate(mi, ratetbl, i++, mi->max_tp_rate[1]);
 }

 if (mp->hw->max_rates >= 2) {

  minstrel_set_rate(mi, ratetbl, i++, mi->max_prob_rate);
 }


 ratetbl->rate[i].idx = mi->lowest_rix;
 ratetbl->rate[i].count = mp->max_retry;
 ratetbl->rate[i].count_cts = mp->max_retry;
 ratetbl->rate[i].count_rts = mp->max_retry;

 rate_control_set_rates(mp->hw, mi->sta, ratetbl);
}
