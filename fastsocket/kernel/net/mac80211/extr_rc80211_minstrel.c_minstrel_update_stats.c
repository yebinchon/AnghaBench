
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct minstrel_sta_info {int n_rates; size_t max_prob_rate; int stats_update; int max_tp_rate; struct minstrel_rate* r; } ;
struct minstrel_rate {int perfect_tx_time; scalar_t__ attempts; int cur_prob; int success; int probability; int last_success; int last_attempts; int cur_tp; int adjusted_retry_count; int retry_count; int sample_limit; scalar_t__ sample_skipped; int att_hist; int succ_hist; } ;
struct minstrel_priv {int dummy; } ;


 int EWMA_LEVEL ;
 int MAX_THR_RATES ;
 int MINSTREL_FRAC (int,int) ;
 int jiffies ;
 int memcpy (int ,size_t*,int) ;
 int minstrel_ewma (int,int,int ) ;
 int minstrel_sort_best_tp_rates (struct minstrel_sta_info*,int,size_t*) ;
 int minstrel_update_rates (struct minstrel_priv*,struct minstrel_sta_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
minstrel_update_stats(struct minstrel_priv *mp, struct minstrel_sta_info *mi)
{
 u8 tmp_tp_rate[MAX_THR_RATES];
 u8 tmp_prob_rate = 0;
 u32 usecs;
 int i;

 for (i=0; i < MAX_THR_RATES; i++)
     tmp_tp_rate[i] = 0;

 for (i = 0; i < mi->n_rates; i++) {
  struct minstrel_rate *mr = &mi->r[i];

  usecs = mr->perfect_tx_time;
  if (!usecs)
   usecs = 1000000;

  if (unlikely(mr->attempts > 0)) {
   mr->sample_skipped = 0;
   mr->cur_prob = MINSTREL_FRAC(mr->success, mr->attempts);
   mr->succ_hist += mr->success;
   mr->att_hist += mr->attempts;
   mr->probability = minstrel_ewma(mr->probability,
       mr->cur_prob,
       EWMA_LEVEL);
  } else
   mr->sample_skipped++;

  mr->last_success = mr->success;
  mr->last_attempts = mr->attempts;
  mr->success = 0;
  mr->attempts = 0;


  if (mr->probability < MINSTREL_FRAC(10, 100))
   mr->cur_tp = 0;
  else
   mr->cur_tp = mr->probability * (1000000 / usecs);



  if (mr->probability > MINSTREL_FRAC(95, 100) ||
      mr->probability < MINSTREL_FRAC(10, 100)) {
   mr->adjusted_retry_count = mr->retry_count >> 1;
   if (mr->adjusted_retry_count > 2)
    mr->adjusted_retry_count = 2;
   mr->sample_limit = 4;
  } else {
   mr->sample_limit = -1;
   mr->adjusted_retry_count = mr->retry_count;
  }
  if (!mr->adjusted_retry_count)
   mr->adjusted_retry_count = 2;

  minstrel_sort_best_tp_rates(mi, i, tmp_tp_rate);







  if (mr->probability >= MINSTREL_FRAC(95,100)) {
   if (mr->cur_tp >= mi->r[tmp_prob_rate].cur_tp)
    tmp_prob_rate = i;
  } else {
   if (mr->probability >= mi->r[tmp_prob_rate].probability)
    tmp_prob_rate = i;
  }
 }


 memcpy(mi->max_tp_rate, tmp_tp_rate, sizeof(mi->max_tp_rate));
 mi->max_prob_rate = tmp_prob_rate;


 mi->stats_update = jiffies;

 minstrel_update_rates(mp, mi);
}
