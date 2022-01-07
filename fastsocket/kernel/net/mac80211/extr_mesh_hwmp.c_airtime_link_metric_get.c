
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sta_info {int fail_avg; int last_tx_rate; } ;
struct rate_info {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int ARITH_SHIFT ;
 int MAX_METRIC ;
 int TEST_FRAME_LEN ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_calculate_bitrate (struct rate_info*) ;
 int sta_set_rate_info_tx (struct sta_info*,int *,struct rate_info*) ;

__attribute__((used)) static u32 airtime_link_metric_get(struct ieee80211_local *local,
       struct sta_info *sta)
{
 struct rate_info rinfo;

 int device_constant = 1 << ARITH_SHIFT;
 int test_frame_len = TEST_FRAME_LEN << ARITH_SHIFT;
 int s_unit = 1 << ARITH_SHIFT;
 int rate, err;
 u32 tx_time, estimated_retx;
 u64 result;

 if (sta->fail_avg >= 100)
  return MAX_METRIC;

 sta_set_rate_info_tx(sta, &sta->last_tx_rate, &rinfo);
 rate = cfg80211_calculate_bitrate(&rinfo);
 if (WARN_ON(!rate))
  return MAX_METRIC;

 err = (sta->fail_avg << ARITH_SHIFT) / 100;




 tx_time = (device_constant + 10 * test_frame_len / rate);
 estimated_retx = ((1 << (2 * ARITH_SHIFT)) / (s_unit - err));
 result = (tx_time * estimated_retx) >> (2 * ARITH_SHIFT) ;
 return (u32)result;
}
