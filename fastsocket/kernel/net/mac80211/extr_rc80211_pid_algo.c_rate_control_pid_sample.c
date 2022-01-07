
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_pid_sta_info {int last_sample; int sharp_cnt; int tx_num_xmit; int last_pf; int tx_num_failed; size_t txrate_idx; int err_avg_sc; int events; } ;
struct rc_pid_rateinfo {int rev_index; scalar_t__ diff; } ;
struct rc_pid_info {int sharpen_duration; size_t oldrate; int target; int smoothing_shift; int sharpen_factor; int coeff_p; int coeff_i; int coeff_d; int sampling_period; struct rc_pid_rateinfo* rinfo; } ;
struct ieee80211_supported_band {int n_bitrates; } ;
struct ieee80211_sta {int dummy; } ;
typedef int s32 ;


 int RC_PID_ARITH_SHIFT ;
 int RC_PID_DO_ARITH_RIGHT_SHIFT (int,int) ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int rate_control_pid_adjust_rate (struct ieee80211_supported_band*,struct ieee80211_sta*,struct rc_pid_sta_info*,int,struct rc_pid_rateinfo*) ;
 int rate_control_pid_event_pf_sample (int *,int,int,int,int) ;
 int rate_control_pid_normalize (struct rc_pid_info*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rate_control_pid_sample(struct rc_pid_info *pinfo,
        struct ieee80211_supported_band *sband,
        struct ieee80211_sta *sta,
        struct rc_pid_sta_info *spinfo)
{
 struct rc_pid_rateinfo *rinfo = pinfo->rinfo;
 u32 pf;
 s32 err_avg;
 u32 err_prop;
 u32 err_int;
 u32 err_der;
 int adj, i, j, tmp;
 unsigned long period;



 period = msecs_to_jiffies(pinfo->sampling_period);
 if (jiffies - spinfo->last_sample > 2 * period)
  spinfo->sharp_cnt = pinfo->sharpen_duration;

 spinfo->last_sample = jiffies;



 if (unlikely(spinfo->tx_num_xmit == 0))
  pf = spinfo->last_pf;
 else
  pf = spinfo->tx_num_failed * 100 / spinfo->tx_num_xmit;

 spinfo->tx_num_xmit = 0;
 spinfo->tx_num_failed = 0;


 if (pinfo->oldrate != spinfo->txrate_idx) {

  i = rinfo[pinfo->oldrate].rev_index;
  j = rinfo[spinfo->txrate_idx].rev_index;

  tmp = (pf - spinfo->last_pf);
  tmp = RC_PID_DO_ARITH_RIGHT_SHIFT(tmp, RC_PID_ARITH_SHIFT);

  rinfo[j].diff = rinfo[i].diff + tmp;
  pinfo->oldrate = spinfo->txrate_idx;
 }
 rate_control_pid_normalize(pinfo, sband->n_bitrates);


 err_prop = (pinfo->target - pf) << RC_PID_ARITH_SHIFT;

 err_avg = spinfo->err_avg_sc >> pinfo->smoothing_shift;
 spinfo->err_avg_sc = spinfo->err_avg_sc - err_avg + err_prop;
 err_int = spinfo->err_avg_sc >> pinfo->smoothing_shift;

 err_der = (pf - spinfo->last_pf) *
    (1 + pinfo->sharpen_factor * spinfo->sharp_cnt);
 spinfo->last_pf = pf;
 if (spinfo->sharp_cnt)
   spinfo->sharp_cnt--;







 adj = (err_prop * pinfo->coeff_p + err_int * pinfo->coeff_i
       + err_der * pinfo->coeff_d);
 adj = RC_PID_DO_ARITH_RIGHT_SHIFT(adj, 2 * RC_PID_ARITH_SHIFT);


 if (adj)
  rate_control_pid_adjust_rate(sband, sta, spinfo, adj, rinfo);
}
