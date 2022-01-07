
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_rate_stats {scalar_t__ probability; int retry_count; int retry_count_rtscts; int retry_updated; } ;
struct minstrel_priv {unsigned int cw_min; unsigned int segment_size; int max_retry; int cw_max; } ;
struct minstrel_ht_sta {unsigned int overhead; unsigned int overhead_rtscts; int avg_ampdu_len; } ;
struct mcs_group {unsigned int* duration; } ;


 int MCS_GROUP_RATES ;
 int MINSTREL_CCK_GROUP ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 unsigned int MINSTREL_TRUNC (int ) ;
 unsigned int min (unsigned int,int ) ;
 struct minstrel_rate_stats* minstrel_get_ratestats (struct minstrel_ht_sta*,int) ;
 struct mcs_group* minstrel_mcs_groups ;

__attribute__((used)) static void
minstrel_calc_retransmit(struct minstrel_priv *mp, struct minstrel_ht_sta *mi,
                         int index)
{
 struct minstrel_rate_stats *mr;
 const struct mcs_group *group;
 unsigned int tx_time, tx_time_rtscts, tx_time_data;
 unsigned int cw = mp->cw_min;
 unsigned int ctime = 0;
 unsigned int t_slot = 9;
 unsigned int ampdu_len = MINSTREL_TRUNC(mi->avg_ampdu_len);
 unsigned int overhead = 0, overhead_rtscts = 0;

 mr = minstrel_get_ratestats(mi, index);
 if (mr->probability < MINSTREL_FRAC(1, 10)) {
  mr->retry_count = 1;
  mr->retry_count_rtscts = 1;
  return;
 }

 mr->retry_count = 2;
 mr->retry_count_rtscts = 2;
 mr->retry_updated = 1;

 group = &minstrel_mcs_groups[index / MCS_GROUP_RATES];
 tx_time_data = group->duration[index % MCS_GROUP_RATES] * ampdu_len / 1000;


 ctime = (t_slot * cw) >> 1;
 cw = min((cw << 1) | 1, mp->cw_max);
 ctime += (t_slot * cw) >> 1;
 cw = min((cw << 1) | 1, mp->cw_max);

 if (index / MCS_GROUP_RATES != MINSTREL_CCK_GROUP) {
  overhead = mi->overhead;
  overhead_rtscts = mi->overhead_rtscts;
 }


 tx_time = ctime + 2 * (overhead + tx_time_data);
 tx_time_rtscts = ctime + 2 * (overhead_rtscts + tx_time_data);


 do {

  ctime = (t_slot * cw) >> 1;
  cw = min((cw << 1) | 1, mp->cw_max);


  tx_time += ctime + overhead + tx_time_data;
  tx_time_rtscts += ctime + overhead_rtscts + tx_time_data;

  if (tx_time_rtscts < mp->segment_size)
   mr->retry_count_rtscts++;
 } while ((tx_time < mp->segment_size) &&
          (++mr->retry_count < mp->max_retry));
}
