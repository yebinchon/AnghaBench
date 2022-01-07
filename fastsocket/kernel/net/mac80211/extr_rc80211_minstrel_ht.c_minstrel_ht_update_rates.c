
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct minstrel_priv {TYPE_2__* hw; } ;
struct minstrel_ht_sta {int sta; int max_prob_rate; int max_tp_rate2; int max_tp_rate; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct TYPE_4__ {int max_rates; } ;
struct TYPE_3__ {int idx; } ;


 int GFP_ATOMIC ;
 struct ieee80211_sta_rates* kzalloc (int,int ) ;
 int minstrel_ht_set_rate (struct minstrel_priv*,struct minstrel_ht_sta*,struct ieee80211_sta_rates*,int ,int ) ;
 int rate_control_set_rates (TYPE_2__*,int ,struct ieee80211_sta_rates*) ;

__attribute__((used)) static void
minstrel_ht_update_rates(struct minstrel_priv *mp, struct minstrel_ht_sta *mi)
{
 struct ieee80211_sta_rates *rates;
 int i = 0;

 rates = kzalloc(sizeof(*rates), GFP_ATOMIC);
 if (!rates)
  return;


 minstrel_ht_set_rate(mp, mi, rates, i++, mi->max_tp_rate);

 if (mp->hw->max_rates >= 3) {

  minstrel_ht_set_rate(mp, mi, rates, i++, mi->max_tp_rate2);
 }

 if (mp->hw->max_rates >= 2) {


  minstrel_ht_set_rate(mp, mi, rates, i++, mi->max_prob_rate);
 }

 rates->rate[i].idx = -1;
 rate_control_set_rates(mp->hw, mi->sta, rates);
}
