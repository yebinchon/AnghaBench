
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_rate_stats {scalar_t__ attempts; scalar_t__ att_hist; scalar_t__ last_attempts; scalar_t__ success; scalar_t__ last_success; scalar_t__ sample_skipped; int succ_hist; int cur_prob; int probability; } ;


 int EWMA_LEVEL ;
 int MINSTREL_FRAC (scalar_t__,scalar_t__) ;
 int minstrel_ewma (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
minstrel_calc_rate_ewma(struct minstrel_rate_stats *mr)
{
 if (unlikely(mr->attempts > 0)) {
  mr->sample_skipped = 0;
  mr->cur_prob = MINSTREL_FRAC(mr->success, mr->attempts);
  if (!mr->att_hist)
   mr->probability = mr->cur_prob;
  else
   mr->probability = minstrel_ewma(mr->probability,
    mr->cur_prob, EWMA_LEVEL);
  mr->att_hist += mr->attempts;
  mr->succ_hist += mr->success;
 } else {
  mr->sample_skipped++;
 }
 mr->last_success = mr->success;
 mr->last_attempts = mr->attempts;
 mr->success = 0;
 mr->attempts = 0;
}
