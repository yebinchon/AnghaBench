
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_pid_sta_info {int txrate_idx; int events; } ;
struct rc_pid_rateinfo {int rev_index; scalar_t__ diff; int index; } ;
struct ieee80211_supported_band {int band; int n_bitrates; TYPE_1__* bitrates; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int bitrate; } ;


 int rate_control_pid_event_rate_change (int *,int,int ) ;
 scalar_t__ rate_supported (struct ieee80211_sta*,int,int) ;

__attribute__((used)) static void rate_control_pid_adjust_rate(struct ieee80211_supported_band *sband,
      struct ieee80211_sta *sta,
      struct rc_pid_sta_info *spinfo, int adj,
      struct rc_pid_rateinfo *rinfo)
{
 int cur_sorted, new_sorted, probe, tmp, n_bitrates, band;
 int cur = spinfo->txrate_idx;

 band = sband->band;
 n_bitrates = sband->n_bitrates;


 cur_sorted = rinfo[cur].rev_index;
 new_sorted = cur_sorted + adj;


 if (new_sorted < 0)
  new_sorted = rinfo[0].rev_index;
 else if (new_sorted >= n_bitrates)
  new_sorted = rinfo[n_bitrates - 1].rev_index;

 tmp = new_sorted;

 if (adj < 0) {

  for (probe = cur_sorted; probe >= new_sorted; probe--)
   if (rinfo[probe].diff <= rinfo[cur_sorted].diff &&
       rate_supported(sta, band, rinfo[probe].index))
    tmp = probe;
 } else {

  for (probe = new_sorted + 1; probe < n_bitrates; probe++)
   if (rinfo[probe].diff <= rinfo[new_sorted].diff &&
       rate_supported(sta, band, rinfo[probe].index))
    tmp = probe;
 }


 do {
  if (rate_supported(sta, band, rinfo[tmp].index)) {
   spinfo->txrate_idx = rinfo[tmp].index;
   break;
  }
  if (adj < 0)
   tmp--;
  else
   tmp++;
 } while (tmp < n_bitrates && tmp >= 0);






}
