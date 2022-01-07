
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct minstrel_sta_info {int packet_count; int sample_count; int sample_deferred; int prev_sample; int n_rates; size_t* max_tp_rate; struct minstrel_rate* r; } ;
struct minstrel_rate {scalar_t__ perfect_tx_time; int sample_skipped; scalar_t__ sample_limit; scalar_t__ probability; int rix; } ;
struct minstrel_priv {int lookaround_rate_mrr; int lookaround_rate; scalar_t__ has_mrr; } ;
struct ieee80211_tx_rate_control {TYPE_2__* bss_conf; int rts; struct sk_buff* skb; } ;
struct ieee80211_tx_rate {int count; int idx; } ;
struct TYPE_3__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int use_cts_prot; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 unsigned int minstrel_get_next_sample (struct minstrel_sta_info*) ;
 int minstrel_get_retry_count (struct minstrel_rate*,struct ieee80211_tx_info*) ;
 scalar_t__ rate_control_send_low (struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;

__attribute__((used)) static void
minstrel_get_rate(void *priv, struct ieee80211_sta *sta,
    void *priv_sta, struct ieee80211_tx_rate_control *txrc)
{
 struct sk_buff *skb = txrc->skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct minstrel_sta_info *mi = priv_sta;
 struct minstrel_priv *mp = priv;
 struct ieee80211_tx_rate *rate = &info->control.rates[0];
 struct minstrel_rate *msr, *mr;
 unsigned int ndx;
 bool mrr_capable;
 bool prev_sample;
 int delta;
 int sampling_ratio;


 if (rate_control_send_low(sta, priv_sta, txrc))
  return;


 mrr_capable = mp->has_mrr &&
        !txrc->rts &&
        !txrc->bss_conf->use_cts_prot;
 if (mrr_capable)
  sampling_ratio = mp->lookaround_rate_mrr;
 else
  sampling_ratio = mp->lookaround_rate;


 mi->packet_count++;

 delta = (mi->packet_count * sampling_ratio / 100) -
   (mi->sample_count + mi->sample_deferred / 2);


 prev_sample = mi->prev_sample;
 mi->prev_sample = 0;
 if (delta < 0 || (!mrr_capable && prev_sample))
  return;

 if (mi->packet_count >= 10000) {
  mi->sample_deferred = 0;
  mi->sample_count = 0;
  mi->packet_count = 0;
 } else if (delta > mi->n_rates * 2) {
  mi->sample_count += (delta - mi->n_rates * 2);
 }


 ndx = minstrel_get_next_sample(mi);
 msr = &mi->r[ndx];
 mr = &mi->r[mi->max_tp_rate[0]];





 if (mrr_capable &&
     msr->perfect_tx_time > mr->perfect_tx_time &&
     msr->sample_skipped < 20) {






  info->flags |= IEEE80211_TX_CTL_RATE_CTRL_PROBE;
  rate++;
  mi->sample_deferred++;
 } else {
  if (!msr->sample_limit != 0)
   return;

  mi->sample_count++;
  if (msr->sample_limit > 0)
   msr->sample_limit--;
 }




 if (!mrr_capable &&
    (mi->r[ndx].probability > MINSTREL_FRAC(95, 100)))
  return;

 mi->prev_sample = 1;

 rate->idx = mi->r[ndx].rix;
 rate->count = minstrel_get_retry_count(&mi->r[ndx], info);
}
