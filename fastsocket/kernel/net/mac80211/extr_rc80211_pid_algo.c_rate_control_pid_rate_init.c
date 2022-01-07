
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_pid_sta_info {int txrate_idx; } ;
struct rc_pid_rateinfo {int index; int rev_index; int diff; } ;
struct rc_pid_info {int norm_offset; struct rc_pid_rateinfo* rinfo; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_1__* bitrates; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ bitrate; } ;


 scalar_t__ RC_PID_FAST_START ;
 int rate_lowest_index (struct ieee80211_supported_band*,struct ieee80211_sta*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
rate_control_pid_rate_init(void *priv, struct ieee80211_supported_band *sband,
      struct ieee80211_sta *sta, void *priv_sta)
{
 struct rc_pid_sta_info *spinfo = priv_sta;
 struct rc_pid_info *pinfo = priv;
 struct rc_pid_rateinfo *rinfo = pinfo->rinfo;
 int i, j, tmp;
 bool s;
 for (i = 0; i < sband->n_bitrates; i++) {
  rinfo[i].index = i;
  rinfo[i].rev_index = i;
  if (RC_PID_FAST_START)
   rinfo[i].diff = 0;
  else
   rinfo[i].diff = i * pinfo->norm_offset;
 }
 for (i = 1; i < sband->n_bitrates; i++) {
  s = 0;
  for (j = 0; j < sband->n_bitrates - i; j++)
   if (unlikely(sband->bitrates[rinfo[j].index].bitrate >
         sband->bitrates[rinfo[j + 1].index].bitrate)) {
    tmp = rinfo[j].index;
    rinfo[j].index = rinfo[j + 1].index;
    rinfo[j + 1].index = tmp;
    rinfo[rinfo[j].index].rev_index = j;
    rinfo[rinfo[j + 1].index].rev_index = j + 1;
    s = 1;
   }
  if (!s)
   break;
 }

 spinfo->txrate_idx = rate_lowest_index(sband, sta);
}
